BEGIN {
    RS = "\n\n\n+"
    FS = "\n\n"
}
$1 ~ /^\[[0-9]+\]/ {
    match($1, /[0-9]+/)
    number = substr($1, RSTART, RLENGTH)      # 레시피 번호
    split($1, line, "\n")
    title = line[1]
    sub(/^\[[0-9]+\] */, "", title)           # [번호] 떼어내기
    gsub(/[^A-Z ]/, "", title)                # 파일 이름에 쓰기 어려운 글자 지우기
    sub(/ +$/, "", title)                     # 끝에 남은 빈칸 지우기
    if (title == "") title = "UNNAMED"        # 제목이 사라졌으면

    body = $2
    gsub(/\n/, " ", body)                     # 본문을 한 줄로
    file = "data/apicius/recipes/" number " " title ".txt"
    print body > file                         # 화면이 아니라 파일로
    close(file)                               # 다 쓴 파일은 닫는다
}
