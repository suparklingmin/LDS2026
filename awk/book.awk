BEGIN {
    RS = "\n\n\n+"
    FS = "\n\n"
    OFS = "\t"
    print "number", "book"             # 머리글
}
$1 ~ /^BOOK [IVX]+\./ {                # 'BOOK V. LEGUMES' 같은 권 제목
    split($1, line, "\n")
    book = line[1]
    sub(/^BOOK /, "", book)            # -> 'V. LEGUMES'
    sub(/ \[[0-9]+\]$/, "", book)      # 각주 표시 떼기
}
$1 ~ /^\[[0-9]+\]/ {                   # 4강 index.awk 와 같은 규칙
    match($1, /[0-9]+/)
    print substr($1, RSTART, RLENGTH), book
}
