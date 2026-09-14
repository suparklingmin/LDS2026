BEGIN {
    RS = "\n\n\n+"
    FS = "\n\n"
    n = split("PEPPER OIL BROTH WINE HONEY VINEGAR CUMIN", spice, " ")
}
$1 ~ /^\[[0-9]+\]/ {
    total++
    for (i = 1; i <= n; i++)
        if ($2 ~ spice[i]) count[spice[i]]++
}
END {
    for (i = 1; i <= n; i++) {
        percent = 100 * count[spice[i]] / total
        printf "%-9s %3d  (%4.1f%%)\n", spice[i], count[spice[i]], percent
    }
    print "전체 레시피", total
}
