BEGIN { FS = "\t" }
NR > 1 {
    n++
    x[n] = $3          # 표준편차를 구하려면 값을 기억해 두어야 한다
    sum += $3
}
END {
    mean = sum / n
    for (i = 1; i <= n; i++) {
        d = x[i] - mean
        ss += d * d    # 편차의 제곱을 모은다
    }
    printf "개수     %d\n", n
    printf "평균     %.2f\n", mean
    printf "표준편차 %.2f\n", sqrt(ss / (n - 1))
}
