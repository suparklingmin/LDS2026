{
    x = length($2)              # 단어의 길이
    y = log($1)/log(10)         # 빈도의 상용로그 (log는 자연로그)
    n++
    sx += x;  sy += y
    sxy += x * y
    sxx += x * x;  syy += y * y
}
END {
    den = sqrt(n*sxx - sx*sx) * sqrt(n*syy - sy*sy)
    r = (n*sxy - sx*sy) / den
    printf "n=%d  r=%.4f\n", n, r
}
