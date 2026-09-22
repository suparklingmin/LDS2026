BEGIN {
    RS = "\n\n\n+";  FS = "\n\n"
    split("0-20 21-33 34-61 62-273", lab, " ")   # 사분위로 나눈 네 구간
}
$1 ~ /^\[[0-9]+\]/ {
    n = split($2, w, " ")                        # 이 레시피의 단어 수
    g = (n <= 20) ? 1 : (n <= 33) ? 2 : (n <= 61) ? 3 : 4
    tot[g]++
    if ($2 ~ /PEPPER/) hit[g]++
}
END {
    for (g = 1; g <= 4; g++)
        printf "%-7s %3d/%3d  %2.0f%%\n", lab[g], hit[g], tot[g], 100*hit[g]/tot[g]
}
