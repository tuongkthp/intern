read -p "Nhap mot so (1000-5000): " num

fibonacci(){
    local n=$1
    local a=0
    local b=1
    local fib=0

    while [ $b -lt $n ]; do
        fib=$b
        local temp=$b
        b=$((a + b))
        a=$temp
    done

    echo $fib
}


if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Loi: Hay nhap 1 so nguyen duong"
    exit 1
fi

if (( num < 1000 || num > 5000)); then
    echo "Loi: So khong nam trong khoang 1000-5000)"
    exit 1
fi

result=$(fibonacci $num)
echo $result
