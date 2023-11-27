# rule defintions
rules=(
    "kutouten-to-commaperiod"
    "da-to-dearu"
)

kutouten-to-commaperiod () {
    sed -i 's:、:，:g; s:。:．:g' $1.replaced
}

da-to-dearu () {
    sed -i 's:だ．:である．:g' $1.replaced
}

# main routine
cp $1 $1.replaced

for rule in "${rules[@]}"; do
    eval $rule $1
done

colordiff -u $1 $1.replaced

