Có 2 server lab
- Server1: Controller + compute node + network node(10.2.1.201)

- Server2: Compute node + network node (10.2.1.202)

- Bật chế độ HA để lab cho metadata

# Dùng l3-agent (High availability L3)
- Cấu hình metadata dùng l3-agent [tại đây](../9.Metadata.md) cho cả 2 server

- File /etc/neutron/neutron.conf (cả 2 server)
```sh
[DEFAULT]
...
l3_ha = True
```

- File /etc/neutron/l3_agent.ini (cả 2 server)
```sh
ha_vrrp_auth_password = openstack
```

- Sau đó, restart các dịch vụ
```sh
#Server1
service neutron-server restart
service neutron-openvswitch-agent restart
service neutron-metadata-agent restart
service neutron-l3-agent restart
```

```sh
#Server1
service neutron-openvswitch-agent restart
service neutron-metadata-agent restart
service neutron-l3-agent restart
```

- Tạo một router mới
```sh
root@hapu-lab-01:~# openstack router create router2
+-------------------------+--------------------------------------+
| Field                   | Value                                |
+-------------------------+--------------------------------------+
| admin_state_up          | UP                                   |
| availability_zone_hints |                                      |
| availability_zones      |                                      |
| created_at              | 2026-01-16T08:00:34Z                 |
| description             |                                      |
| distributed             | False                                |
| enable_ndp_proxy        | None                                 |
| external_gateway_info   | null                                 |
| flavor_id               | None                                 |
| ha                      | True                                 |
| id                      | d2687b81-b875-4d63-92b2-c3669216c6a5 |
| name                    | router2                              |
| project_id              | 5fa75f581b2940d0ae389d2b0075ba16     |
| revision_number         | 1                                    |
| routes                  |                                      |
| status                  | ACTIVE                               |
| tags                    |                                      |
| tenant_id               | 5fa75f581b2940d0ae389d2b0075ba16     |
| updated_at              | 2026-01-16T08:00:34Z                 |
+-------------------------+--------------------------------------+
```

- Sẽ thấy namespace của router được tạo trên cả 2 server
```sh
#Server1
root@hapu-lab-01:~# ip netns
qrouter-d2687b81-b875-4d63-92b2-c3669216c6a5 (id: 8)

#Server2
root@hapu-lab-02:~# ip netns
qrouter-d2687b81-b875-4d63-92b2-c3669216c6a5 (id: 2)
```

- Kiểm tra xem server sẽ là master, server nào là backup
```sh
#Server1
root@hapu-lab-01:~# ip netns exec qrouter-d2687b81-b875-4d63-92b2-c3669216c6a5 netstat -an | grep 9697
root@hapu-lab-01:~# 

#Server2
root@hapu-lab-02:~# ip netns exec qrouter-d2687b81-b875-4d63-92b2-c3669216c6a5 netstat -an | grep 9697
tcp6       0      0 :::9697                 :::*                    LISTEN     
```

- Như vậy server2 được chọn làm master, server1 là backup

- Sau đó, stop l3-agent bên server2
```sh
#Server2
root@hapu-lab-02:~# systemctl stop neutron-l3-agent
root@hapu-lab-02:~# ip netns exec qrouter-d2687b81-b875-4d63-92b2-c3669216c6a5 netstat -an | grep 9697
root@hapu-lab-02:~# 

#Server1
root@hapu-lab-01:~# ip netns exec qrouter-d2687b81-b875-4d63-92b2-c3669216c6a5 netstat -an | grep 9697
tcp6       0      0 :::9697                 :::*                    LISTEN     
```
- Khi master bị dừng dịch vụ l3-agent, hệ thống sẽ đưa server1 lên làm master thay thế. Khi này, sẽ thấy metadata service qua l3 đã được chuyển sang server1



