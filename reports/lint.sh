# rule defintions
rules=(
    "kutouten-to-commaperiod"
    "da-to-dearu"
)

kutouten-to-commaperiod () {
    sed -i 's:、:，:g; s:。:．:g' $1.checked
}

da-to-dearu () {
    sed -i 's:だ．:である．:g' $1.checked
}

# main
if [ "$#" -eq 0 ]; then
    echo "usage: $0 file1 file2 ..."
    exit
fi

for file in "$@"; do
    cp $file $file.checked

    for rule in "${rules[@]}"; do
        eval $rule $file
    done

    colordiff -u $file $file.checked

    if [ "$?" -eq 0 ]; then
        echo "$file: passed all rules"
        rm $file.checked
    fi
done

exit 0
