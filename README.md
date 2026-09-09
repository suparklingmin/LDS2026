# 언어데이터과학 (2026학년도 2학기)

**교과목번호**: M1246.001400(001)  
**개설학과**: 서울대학교 인문대학 언어학과  
**담당교수**: 박수민(mam3b@snu.ac.kr)

## 🎯 수업 목표

이 강좌의 목표는 Python을 사용하여 코퍼스에서 원하는 정보를 추출하고 언어학 연구에 활용하는 것이다.

1. **환경·도구**: Git, Linux/명령줄, AWK, Python(numpy·pandas·seaborn) 등 데이터과학을 위한 컴퓨팅 환경을 구축하고 활용할 수 있다.
2. **언어데이터 처리**: 문자 인코딩부터 JSON·XML 말뭉치까지 다양한 언어데이터(모두의 말뭉치, 표준국어대사전, HuggingFace, NSMC 등)를 불러오고 분석할 수 있다.
3. **분석·모델링**: 단어 빈도 분석, 기계학습 분류, 워드 임베딩 등을 언어학 연구 문제에 적용하고, 재현 가능한 방식으로 개인 프로젝트를 수행할 수 있다.

이 강좌에서는 수강생들이 Python 기초 지식이 있다고 가정한다. 구체적으로는 `def`, `if`, `for`, `class` 문을 읽고 쓸 수 있어야 한다.

## 📚 교재 및 실습 자료

### 주교재

자체 제작 슬라이드

### 부교재

1. The Open Handbook of Linguistic Data Management https://direct.mit.edu/books/oa-edited-volume/5244/The-Open-Handbook-of-Linguistic-Data-Management
2. VanderPlas. *Python Data Science Handbook.* https://jakevdp.github.io/PythonDataScienceHandbook/
3. Jurafsky & Martin. *Speech and Language Processing* (3rd ed. draft) https://web.stanford.edu/~jurafsky/slp3/

### 실습 자료

- Apicius, *De Re Coquinaria* https://www.gutenberg.org/ebooks/29728
- Naver Sentiment Movie Corpus https://github.com/e9t/nsmc
- 모두의 말뭉치 https://kli.korean.go.kr/corpus/
- 표준국어대사전 https://stdict.korean.go.kr/
- 우리말샘 https://opendict.korean.go.kr/
- Hugging Face https://huggingface.co/

### Linux & Python 실습 환경

- GitHub Codespace https://github.com

## 📅 강의 일정 및 수업 자료 (추가 중)

|회차|날짜|주제|자료|
|--|--|--|--|
|1강|2026-09-02(수)|강좌 소개|-|
|2강|2026-09-07(월)|환경 설정: git|[슬라이드](./slides/02-20260907-git.pdf)|
|3강|2026-09-09(수)|Linux 환경에서의 텍스트 파일 탐색|[슬라이드](./slides/03-20260909-linux.pdf)|
|4강|2026-09-14(월)|AWK와 정규표현식을 활용한 텍스트 처리|[슬라이드](./slides/04-20260914-awk.pdf)|
|5강|2026-09-16(수)|데이터과학: 데이터의 정의와 범주, 언어데이터의 범위, 기술통계량|[슬라이드](./slides/05-20260916-data-science.pdf) [논문(Bickel et al. 1975)(https://www.science.org/doi/10.1126/science.187.4175.398)|
|6강|2026-09-21(월)|Python 활용 (1) 수치 연산(`numpy`)|[슬라이드](./slides/06-20260921-numpy.pdf)|
|7강|2026-09-23(수)|Python 활용 (2) 데이터프레임(`pandas`)과 시각화(`seaborn`)|[슬라이드](./slides/07-20260923-pandas-seaborn.pdf)|
|8강|2026-09-28(월)|코퍼스언어학: 단어 빈도 및 생산성 측정 방식
|9강|2026-09-30(수)|문자 인코딩과 유니코드
|10강|2026-10-07(수)|NSMC 데이터 활용: 형태소 분석, 단어구름
|11강|2026-10-12(월)|모두의 말뭉치 (1) JSON 파일 처리
|12강|2026-10-19(월)|모두의 말뭉치 (2) ‘완전’과 ‘아주’의 출현 환경 비교|[논문(김다미 2021)](https://www.kci.go.kr/kciportal/ci/sereArticleSearch/ciSereArtiView.kci?sereArticleSearchBean.artiId=ART002701330)
|13강|2026-10-21(수)|모두의 말뭉치 (3) ‘완전’과 ‘아주’의 연령별·성별 용례 비교
|발표|2026-10-26(월)|언어데이터 관리 사례 발표(논문 발제 및 퀴즈) (1)
|발표|2026-10-28(수)|언어데이터 관리 사례 발표(논문 발제 및 퀴즈) (2)
|14강|2026-11-02(월)|표준국어대사전 데이터 활용 (1) XML 파일 처리
|15강|2026-11-04(수)|표준국어대사전 데이터 활용 (2) 표제어 추출 및 분석|[논문(임건수 2025)](https://www.kci.go.kr/kciportal/ci/sereArticleSearch/ciSereArtiView.kci?sereArticleSearchBean.artiId=ART003203523)
|16강|2026-11-09(월)|HuggingFace 데이터 활용
|17강|2026-11-11(수)|코퍼스 구축과 웹 크롤링
|발표|2026-11-16(월)|개인 프로젝트 중간발표 (1)
|발표|2026-11-18(수)|개인 프로젝트 중간발표 (2)
|18강|2026-11-23(월)|기계학습 (1) 로지스틱 회귀분석을 사용한 분류(`sklearn`)
|19강|2026-11-25(수)|기계학습 (2) NSMC 영화평 감정분석
|20강|2026-11-30(월)|워드 임베딩 (1) 분포 가설, 코사인 유사도, TF-IDF
|21강|2026-12-01(수)|워드 임베딩 (2) Word2Vec(\texttt{gensim})
|발표|2026-12-07(월)|개인 프로젝트 최종발표 (1)
|발표|2026-12-09(수)|개인 프로젝트 최종발표 (2)

### 읽기 자료

+ 5강 데이터과학
    - Bickel, P. J., Hammel, E. A., & O'Connell, J. W. (1975). Sex Bias in Graduate Admissions: Data from Berkeley: Measuring bias is harder than is usually assumed, and the evidence is sometimes contrary to expectation. *Science*, 187(4175), 398-404. https://www.science.org/doi/10.1126/science.187.4175.398
+ 12강 모두의 말뭉치
    - 김다미. (2021). 〈부사적 쓰임을 보이는 ‘완전(完全)’에 대한 통시적 고찰〉. 《國語學》 97, 439–475.
+ 15강 표준국어대사전
    - 임건수. (2025). 〈매체 언어에서 형용사 어간의 자립적 사용 양상 연구〉. 《한국어학》 107, 183–208.

### 주요 활동

1. 고대 로마 요리책에서 어떤 재료가 많이 쓰였는지 알아보고 레시피 카드를 추출한다. (Linux, AWK)
2. 긍정적인 영화평과 부정적인 영화평에서 각기 어떤 단어가 자주 쓰였는지 시각화한다. (pandas, NSMC)
3. ‘완전 맛있다’에서처럼 ‘완전’을 부사로 쓰는 용법이 연령별·성별로 다르게 나타나는지 데이터에서 직접 확인한다. (모두의 말뭉치, JSON)
4. ‘정말 맛없’의 ‘맛없’처럼 형용사 어간을 자립적으로 쓰는 용법의 양상을 데이터에서 직접 확인한다. (모두의 말뭉치, JSON, 표준국어대사전, XML)
