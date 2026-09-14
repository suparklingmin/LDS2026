BEGIN {
    RS = "\n\n\n+"
    FS = "\n\n"
    OFS = "\t"                       # 출력은 탭으로 구분
    print "number", "title", "words" # 머리글
}
$1 ~ /^\[[0-9]+\]/ {
    match($1, /[0-9]+/)                       # 제목에서 번호 찾기
    number = substr($1, RSTART, RLENGTH)      # 찾은 자리를 잘라내기
    split($1, line, "\n")                     # 제목을 줄 단위로 나누기
    title = line[1]
    sub(/^\[[0-9]+\] */, "", title)           # 앞의 [번호] 떼어내기
    body = $2
    gsub(/\n/, " ", body)                     # 본문을 한 줄로 잇기
    print number, title, split(body, w, " ")  # 번호, 제목, 단어 수
}
