CREATE DATABASE whalebook;

USE whalebook;

-- 회원 가입 테이블
CREATE TABLE member(
                       id VARCHAR(16) NOT NULL,   								-- 아이디
                       pw VARCHAR(300) NOT NULL,  								-- 비밀번호
                       NAME VARCHAR(100) NOT NULL,  							-- 이름
                       email VARCHAR(100) NOT NULL,   							-- 이메일
                       tel VARCHAR(13),   										-- 전화번호
                       birth DATE, 											-- 생년월일
                       address VARCHAR(300), 									-- 주소
                       resdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- 가입일
                       POINT INT DEFAULT 0,   									-- 포인트
                       grade VARCHAR(4) DEFAULT 'F', 							-- 멤버쉽 등급
                       per int,												-- 숫자별 특정 인원 지정 -> (0 : 관리자), (1 : 고객)
                       PRIMARY KEY (id)
);

-- 관리자 페이지에서 사용자가 특정 인원 판매자 지정 필요
INSERT INTO member(id, pw, NAME, email, tel, birth, per) VALUES('admin','1234', '관리자', 'admin@shop.com', '010-1004-1004', '1998-01-01', 0);
INSERT INTO member(id, pw, NAME, email, tel, birth, address, per) VALUES('kimhk','1234', '김현경', 'kimhk@shop.com', '010-1234-5678', '2000-01-01','서울 금천구 디지털로 185<br>2관 11층<br>08511', 1);
INSERT INTO member(id, pw, NAME, email, tel, birth, address, per) VALUES('kimbk','qwer1234!', '김보경', 'kimbk@shop.com', '010-8765-4321', '2000-01-01','서울 금천구 디지털로 185<br>2관 11층<br>08511', 1);
INSERT INTO member(id, pw, NAME, email, tel, birth, address, per) VALUES('parkjk','2318358', '박진권', 'park@shop.com', '010-1111-2222', '2000-01-01','서울 금천구 디지털로 185<br>2관 11층<br>08511', 1);
INSERT INTO member(id, pw, NAME, email, tel, birth, address, per) VALUES('sirious920','xogns1234!', '오태훈', 'dhxogns920@shop.com', '010-7329-7484', '1998-09-20','서울 금천구 디지털로 185<br>2관 11층<br>08511', 1);
INSERT INTO member(id, pw, NAME, email, tel, birth, address, per) VALUES('shin','asdf1234!', '신예은', 'shin@shop.com', '010-9999-8888', '2000-01-01','서울 금천구 디지털로 185<br>2관 11층<br>08511', 1);

COMMIT;

SELECT * FROM member;


UPDATE member SET pw='6lRVDcHqc9ceHafDPXmPbz2r4KRXzN1Bi/k0wAQZFua0seXPMFKXMHY6Ut5PW6anSpaKsA==' WHERE id='admin';
UPDATE member SET pw='6lRVDcHqc9ceHafDPXmPbz2r4KRXzN1Bi/k0wAQZFua0seXPMFKXMHY6Ut5PW6anSpaKsA==' WHERE id='kimhk';
UPDATE member SET pw='qK2aVyBfeZfFcZAYbnfIaMVr/yppCwrnlKSMGhy2wRBdm2MFX9KtVTF7WoGPr5PP2EooyQ==' WHERE id='kimbk';
UPDATE member SET pw='ayDlB61VvnK8CHscf/moQNTbqywdHHf1hT/G8SgChm40NB2Se86VKKg2fibN8MYuIN5XHg==' WHERE id='parkjk';
UPDATE member SET pw='y77ZcnJueDxVMDDVzGMQTBq3ti0m0w3jEBRA9Ib901OMXn+gqj5W/XEzTfJJqEFVWn7PKw==' WHERE id='sirious920';
UPDATE member SET pw='hmQ6nKUBYdXpLQGoN05drYLHeg3XF+wdBGad1DFuDI64MMRM/8bYIP/lzjgcjqL3vRRtDA==' WHERE id='shin';

--------------------------------------------------------------

-- 공지사항(notice) 테이블 생성

create table notice(
                       no int primary KEY AUTO_INCREMENT,
                       title varchar(200) not NULL,
                       content varchar(1000),
                       resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       visit int DEFAULT 0
);

-- 공지사항 더미글 추가 10건

INSERT INTO notice(title, content) VALUES ('공지사항1', '공지사항1 더미글입니다.');

INSERT INTO notice(title, content) VALUES ('공지사항2', '공지사항2 더미글입니다.');

INSERT INTO notice(title, content) VALUES ('공지사항3', '공지사항3 더미글입니다.');

INSERT INTO notice(title, content) VALUES ('공지사항4', '공지사항4 더미글입니다.');

INSERT INTO notice(title, content) VALUES ('공지사항5', '공지사항5 더미글입니다.');

INSERT INTO notice(title, content) VALUES ('공지사항6', '공지사항6 더미글입니다.');

INSERT INTO notice(title, content) VALUES ('공지사항7', '공지사항7 더미글입니다.');

INSERT INTO notice(title, content) VALUES ('공지사항8', '공지사항8 더미글입니다.');

INSERT INTO notice(title, content) VALUES ('공지사항9', '공지사항9 더미글입니다.');

COMMIT;      


select * from notice;

--------------------------------------------------------------

-- 자주 묻는 질문 (FAQ) 테이블 생성

CREATE TABLE faq (
                     fno int PRIMARY KEY AUTO_INCREMENT,
                     question VARCHAR(1000) NOT NULL,
                     answer VARCHAR(1000) NOT NULL,
                     cnt INT DEFAULT 0 NOT NULL
);

INSERT INTO faq(question, answer) VALUES('자주 묻는 질문1', '자주 묻는 질문1 더미글입니다.');

INSERT INTO faq(question, answer) VALUES('자주 묻는 질문2', '자주 묻는 질문2 더미글입니다.');

INSERT INTO faq(question, answer) VALUES('자주 묻는 질문3', '자주 묻는 질문3 더미글입니다.');

INSERT INTO faq(question, answer) VALUES('자주 묻는 질문4', '자주 묻는 질문4 더미글입니다.');

INSERT INTO faq(question, answer) VALUES('자주 묻는 질문5', '자주 묻는 질문5 더미글입니다.');

INSERT INTO faq(question, answer) VALUES('자주 묻는 질문6', '자주 묻는 질문6 더미글입니다.');

INSERT INTO faq(question, answer) VALUES('자주 묻는 질문7', '자주 묻는 질문7 더미글입니다.');

INSERT INTO faq(question, answer) VALUES('자주 묻는 질문8', '자주 묻는 질문8 더미글입니다.');

INSERT INTO faq(question, answer) VALUES('자주 묻는 질문9', '자주 묻는 질문9 더미글입니다.');

COMMIT;

select * from faq;

--------------------------------------------------------------



-- 파일 업로드 -- 필요한지는 모르겠음...

create table filetest(
                         uname varchar(200),
                         subject varchar(300),
                         content varchar(1000),
                         filename varchar(500)
);

create table filetest2(
                          uname varchar(200),
                          subject varchar(300),
                          content varchar(1000),
                          filename1 varchar(500),
                          filename2 varchar(500),
                          filename3 varchar(500)
);

select * from filetest2;

--------------------------------------------------------------

-- 상품 테이블 생성
create table product(
                        pro_no INT PRIMARY KEY AUTO_INCREMENT,
                        cate_id VARCHAR(4) NOT NULL,								-- 품목 명
                        pro_cate_no VARCHAR(100) NOT NULL, 						-- 상품번호+Category : 1-10 이런 형식
                        price INT DEFAULT 0, 										-- 상품 가격
                        title VARCHAR(100) NOT NULL,								-- 상품명
                        description VARCHAR(200), 									-- 상품 썸네일 설명
                        pro_content VARCHAR(2000), 								-- 상품 설명
                        thumb VARCHAR(256), 											-- 상품 썸네일
                        img_src VARCHAR(5000) DEFAULT 'no_img.jpg', 			-- 상품 이미지 리스트
                        regdate timestamp default CURRENT_TIMESTAMP 			-- 상품 게시 날짜
);

-- 상품 더미데이터 취합
INSERT INTO product VALUES (DEFAULT, 'A', 'A-1', 11000, '초등학교 음악 6학년 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-1.jpg', 'A-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-2', 11000, '초등학교 미술 3학년 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-2.jpg', 'A-2.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-3', 11000, '초등학교 사회 3학년 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-3.jpg', 'A-3.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-4', 11000, '초등학교 사회 4학년 2학기 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-4.jpg', 'A-4.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-5', 11000, '초등학교 사회 4학년 1학기 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-5.jpg', 'A-5.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-6', 11000, '초등학교 사회 6학년 1학기 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-6.jpg', 'A-6.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-7', 11000, '초등학교 과학 5학년 1학기 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-7.jpg', 'A-7.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-8', 11000, '초등학교 과학 5학년 2학기 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-8.jpg', 'A-8.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-9', 11000, '초등학교 음악 3학년 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-9.jpg', 'A-9.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-10', 11000, '초등학교 음악 5학년 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-10.jpg', 'A-10.jpg' , DEFAULT);


INSERT INTO product VALUES (DEFAULT, 'B', 'B-1', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 사회 5-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-1.jpg', 'B-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-2', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 가을＊겨울 1-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-2.jpg', 'B-2.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-3', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 과학 6-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-3.jpg', 'B-3.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-4', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 국어 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-4.jpg', 'B-4.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-5', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 수학 1-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-5.jpg', 'B-5.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-6', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 수학 5-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-6.jpg', 'B-6.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-7', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 과학 6-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-7.jpg', 'B-7.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-8', 5000, '개념 꿀꺽 국어, 과학, 사회 3-1', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-8.jpg', 'B-8.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-9', 5000, '개념 꿀꺽 수학 6-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-9.jpg', 'B-9.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-10', 5000, '개념 꿀꺽 수학 6-1', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-10.jpg', 'B-10.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-1', 5000, '문해력 독해가 힘이다 디지털, 비문학편 3단계 B', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-1.jpg', 'C-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-2', 5000, '문해력 독해가 힘이다 디지털, 비문학편 4단계 B', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-2.jpg', 'C-2.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-3', 5000, '문해력 독해가 힘이다 5-B 문장제 수학편', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-3.jpg', 'C-3.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-4', 5000, '문해력 독해가 힘이다 4-B 문장제 수학편', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-4.jpg', 'C-4.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-5', 5000, '수학 리더 응용, 심화 5-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-5.jpg', 'C-5.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-6', 5000, '수학 리더 응용, 심화 6-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-6.jpg', 'C-6.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-7', 5000, '똑똑한 하루 Phonics 3A', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-7.jpg', 'C-7.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-8', 5000, '똑똑한 하루 Phonics 2B', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-8.jpg', 'C-8.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-9', 5000, '똑똑한 하루 Grammar 3A', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-9.jpg', 'C-9.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-10', 5000, '수학 리더 연산 5A', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-10.jpg', 'C-10.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-1', 5000, '수업을 살리는 실과 레시피101', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-1.jpg', 'D-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-2', 5000, 'A가시개미와 나무괴물', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-2.jpg', 'D-2.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-3', 5000, '예쁘군과 멋진걸', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-3.jpg', 'D-3.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-4', 5000, '수업을 살리는 체육 레시피', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-4.jpg', 'D-4.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-5', 5000, '수업을 살리는 음악 레시피', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-5.jpg', 'D-5.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-6', 5000, 'A가시개미와 나무괴물', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-6.jpg', 'D-6.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-7', 5000, 'LIVE 세계사 - 인도', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-7.jpg', 'D-7.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-8', 5000, '산과 염기 LIVE  과학', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-8.jpg', 'D-8.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-9', 5000, '초등학교 음악 6학년', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-9.jpg', 'D-9.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-10', 5000, '누구나 쉽고 재미있게 사고력 수학 노크 PA3', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-10.jpg', 'D-10.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-1', 5000, '중학교 국어 1-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-1.jpg', 'E-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-2', 5000, '중학교 국어 1-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-2.jpg', 'E-2.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-3', 5000, '중학교 국어 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-3.jpg', 'E-3.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-4', 5000, '중학교 사회 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-4.jpg', 'E-4.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-5', 5000, '중학교 역사 부도', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-5.jpg', 'E-5.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-6', 5000, 'Middle School English 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-6.jpg', 'E-6.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-7', 5000, '중학교 역사 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-7.jpg', 'E-7.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-8', 5000, '중학교 사회 1', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-8.jpg', 'E-8.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-9', 5000, 'Middle School English 3', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-9.jpg', 'E-9.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-10', 5000, '중학교 수학 3', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-10.jpg', 'E-10.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-1', 5000, '수학의 힘 개념편 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-2', 5000, '시험비법 과학전략 중학 1-2 ', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-3', 5000, '체크체크 베이직 N제 수학 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-4', 5000, '체크체크 영어 2-B', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-5', 5000, '시작은 하루 영어 어휘 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-6', 5000, '체크체크 베이직 N제 수학 2-1', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-7', 5000, '체크체크 베이직 수학 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-8', 5000, '체크체크 사회 2-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-9', 5000, '체크체크 역사 1', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-10', 5000, '체크체크 과학 2-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-1', 5000, '해법 열공 기출 문제집 수학 중간범위 1', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-2', 5000, 'All 100 올백 기출문제집 중1 수학', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-3', 5000, '중학전략 사회 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-4', 5000, '영어전략 구문  중학 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-5', 5000, '시험비법 수학전략 중학 3-2 ', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-6', 5000, '특목고 대비 일등 전략 중학 수학 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-7', 5000, '특목고 대비 일등 전략 중학 영어 문법', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-8', 5000, '국가수준 학업성취도 평가 문제집 중3 국어', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-9', 5000, '국가수준 학업성취도 평가 문제집 중3 과학', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-10', 5000, '7일 끝 중간고사 기말고사 중학 과학 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-1', 5000, '홍길동전 최고운전', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-2', 5000, '춘향전 운영전', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-3', 5000, '숙향전 최척전', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-4', 5000, '한번에 풀리는 물리학 esc', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-5', 5000, '한번에 풀리는 화학 esc', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-6', 5000, '한번에 풀리는 생명과학 esc', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-7', 5000, '한번에 풀리는 지구과학 esc', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-8', 5000, 'MY VOCA 1800 Level 1', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-9', 5000, 'MY VOCA 1800 Level 1', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-10', 5000, '쉽게 읽는 고전 소설 세트', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-1', 5000, '고등학교 국어', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-2', 5000, '고등학교 문학', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-3', 5000, '고등학교 한국사', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-4', 5000, '고등학교 사회 문화', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-5', 5000, 'High School English', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-6', 5000, '고등학교 수학2', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-7', 5000, '고등학교 통합과학', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-8', 5000, '고등학교 교육학', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-9', 5000, '고등학교 생명과학1', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-10', 5000, '고등학교 기하', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-1', 5000, '고등 기하 셀파', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-2', 5000, '고등 기하 확률과 통계', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-3', 5000, '고등 수학(하) 개념 해결의 법칙', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-4', 5000, '개념 해결의 법칙 확률과 통계', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-5', 5000, '고등 셀파 윤리와 사상', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

-- INSERT INTO product VALUES (DEFAULT, 'J', 'J-6', 5000, '초등학교 음악 6학년', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-1.jpg', 'A-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-7', 5000, '실전에 강한 수능전략 화법과 작문', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-8', 5000, '실전에 강한 수능전략 생활과 윤리', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-9', 5000, '시작은 하루 수능', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-10', 5000, '고등 셀파 통합과학', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-1', 5000, '실전에 강한 수능전략 미적분', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-2', 5000, '실전에 강한 수능전략 확률과 통계', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-3', 5000, '실전에 강한 수능전략 화법과 작문', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-4', 5000, '실전에 강한 수능전략 생활과 윤리', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-5', 5000, '시작은 하루 수능 수학2 기초', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-6', 5000, '시작은 하루 수능 한국사 기초', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-7', 5000, '처음 만나는 수능 구문 Basic  기본', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-8', 5000, '고단백 독서', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-9', 5000, '고단백 언어와 매체', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-10', 5000, '한 권에 끝내는 수능 필독서 수능 셀파 국어영역 문법 특강', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-1', 5000, '한자 1800', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-2', 5000, '자격증 한번에 따기 3급', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-3', 5000, '국가수준 학업 성취도 평가 문제집 3권', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-4', 5000, '국가수준 학업 성취도 평가 문제집 고2  국어', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-5', 5000, '국가수준 학업 성취도 평가 문제집 고2  영어', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-6', 5000, '국가수준 학업 성취도 평가 문제집 고2  수학', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-1', 5000, '돌잡이 한글 18종+디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-2', 5000, '돌잡이 수학 18종+디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-3', 5000, '빅키즈 수학 29종+디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-4', 5000, '빅키즈 지식자람 25종+디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-5', 5000, '돌잡이 영어 33종+ 디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-6', 5000, '돌잡이 한글 18종+ 디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-7', 5000, '탐험스티커 3종 세트 동물+탈것+영화', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'R', 'R-1', 5000, '코딩토이 마이빅 46종+전용 앱 2종', '상품 요약설명',  '상품상세설명-목차, 내용', 'R-1.jpg', 'R-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-1', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-2', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-3', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-4', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-5', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-6', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-7', 5000, 'MOYAMONG & Friends년', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

select * from product;
-- 상품 부가정보 테이블 생성
create table addinfo(
                        add_no int primary KEY AUTO_INCREMENT,
                        pro_no integer not null,
                        title varchar(200) not null,
                        movie varchar(256) default 'sample1.mp4',
                        resdate timestamp default current_timestamp
);

INSERT INTO addinfo VALUES (DEFAULT, 1,'초등학교 사회 3학년 교과서','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 2,'초등학교 사회 4학년 2학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 3,'초등학교 사회 4학년 1학기 교과서','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 4,'초등학교 사회 6학년 1학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 5,'초등학교 과학 5학년 1학기 교과서','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 6,'초등학교 과학 5학년 2학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 7,'초등학교 음악 3학년 교과서','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 8,'초등학교 음악 5학년 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 9,'초등학교 음악 6학년 교과서','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 10,'초등학교 미술 3학년 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 11,'초등학교 사회 3학년 교과서','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 12,'초등학교 사회 4학년 2학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 13,'초등학교 사회 4학년 1학기 교과서','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 14,'초등학교 사회 6학년 1학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 15,'초등학교 과학 5학년 1학기 교과서','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 16,'초등학교 과학 5학년 2학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 17,'초등학교 음악 3학년 교과서','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 18,'초등학교 음악 5학년 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 19,'어떤 교과서를 쓰더라도 언제나 우등생 사회 5-2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 20,'어떤 교과서를 쓰더라도 언제나 우등생 가을＊겨울 1-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 21,'어떤 교과서를 쓰더라도 언제나 우등생 과학 6-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 22,'어떤 교과서를 쓰더라도 언제나 우등생 국어 3-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 23,'어떤 교과서를 쓰더라도 언제나 우등생 수학 1-2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 24,'어떤 교과서를 쓰더라도 언제나 우등생 수학 5-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 25,'어떤 교과서를 쓰더라도 언제나 우등생 과학 6-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 26,'개념 꿀꺽 국어, 과학, 사회 3-1','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 27,'개념 꿀꺽 수학 6-2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 28,'개념 꿀꺽 수학 6-1','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 29,'문해력 독해가 힘이다 디지털, 비문학편 3단계 B','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 30,'문해력 독해가 힘이다 디지털, 비문학편 4단계 B','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 31,'문해력 독해가 힘이다 5-B 문장제 수학편','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 32,'문해력 독해가 힘이다 4-B 문장제 수학편','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 33,'수학 리더 응용, 심화 5-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 34,'수학 리더 응용, 심화 6-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 35,'똑똑한 하루 Phonics 3A','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 36,'똑똑한 하루 Phonics 2B','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 37,'똑똑한 하루 Grammar 3A','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 38,'수학 리더 연산 5A','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 39,'수업을 살리는 실과 레시피101','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 40,'A가시개미와 나무괴물','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 41,'예쁘군과 멋진걸','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 42,'수업을 살리는 체육 레시피','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 43,'수업을 살리는 음악 레시피','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 44,'A가시개미와 나무괴물','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 45,'LIVE 세계사 - 인도','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 46,'산과 염기 LIVE  과학','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 47,'초등학교 음악 6학년','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 48,'누구나 쉽고 재미있게 사고력 수학 노크 PA3','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 49,'중학교 국어 1-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 50,'중학교 국어 1-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 51,'중학교 국어 3-2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 52,'중학교 사회 2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 53,'중학교 역사 부도','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 54,'Middle School English 2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 55,'중학교 역사 2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 56,'중학교 사회 1','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 57,'Middle School English 3','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 58,'중학교 수학 3','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 59,'수학의 힘 개념편 3-2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 60,'시험비법 과학전략 중학 1-2 ','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 61,'체크체크 베이직 N제 수학 3-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 62,'체크체크 영어 2-B','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 63,'시작은 하루 영어 어휘 2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 64,'체크체크 베이직 N제 수학 2-1','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 65,'체크체크 베이직 수학 3-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 66,'체크체크 사회 2-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 67,'체크체크 역사 1','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 68,'체크체크 과학 2-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 69,'해법 열공 기출 문제집 수학 중간범위 1','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 70,'All 100 올백 기출문제집 중1 수학','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 71,'중학전략 사회 2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 72,'영어전략 구문  중학 2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 73,'시험비법 수학전략 중학 3-2 ','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 74,'특목고 대비 일등 전략 중학 수학 3-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 75,'특목고 대비 일등 전략 중학 영어 문법','lecture_video03.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 76,'국가수준 학업성취도 평가 문제집 중3 국어','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 77,'국가수준 학업성취도 평가 문제집 중3 과학','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 78,'7일 끝 중간고사 기말고사 중학 과학 3-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 79,'홍길동전 최고운전','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 80,'춘향전 운영전','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 81,'숙향전 최척전','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 82,'한번에 풀리는 물리학 esc','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 83,'한번에 풀리는 화학 esc','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 84,'한번에 풀리는 생명과학 esc','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 85,'한번에 풀리는 지구과학 esc','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 86,'MY VOCA 1800 Level 1','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 87,'MY VOCA 1800 Level 1','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 88,'쉽게 읽는 고전 소설 세트','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 89,'고등학교 국어','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 90,'고등학교 문학','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 91,'고등학교 한국사','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 92,'고등학교 사회 문화','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 93,'High School English','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 94,'고등학교 수학2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 95,'고등학교 통합과학','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 96,'고등학교 교육학','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 97,'고등학교 생명과학1','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 98,'고등학교 기하','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 99,'고등 기하 셀파','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 100,'고등 기하 확률과 통계','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 101,'고등 수학(하) 개념 해결의 법칙','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 102,'개념 해결의 법칙 확률과 통계','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 103,'고등 셀파 윤리와 사상','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 104,'실전에 강한 수능전략 화법과 작문','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 105,'실전에 강한 수능전략 생활과 윤리','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 106,'시작은 하루 수능','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 107,'고등 셀파 통합과학','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 108,'실전에 강한 수능전략 미적분','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 109,'실전에 강한 수능전략 확률과 통계','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 110,'실전에 강한 수능전략 화법과 작문','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 111,'실전에 강한 수능전략 생활과 윤리','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 112,'시작은 하루 수능 수학2 기초','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 113,'시작은 하루 수능 한국사 기초','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 114,'처음 만나는 수능 구문 Basic  기본','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 115,'고단백 독서','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 116,'고단백 언어와 매체','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 117,'한 권에 끝내는 수능 필독서 수능 셀파 국어영역 문법 특강','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 118,'한자 1800','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 119,'자격증 한번에 따기 3급','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 120,'국가수준 학업 성취도 평가 문제집 3권','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 121,'국가수준 학업 성취도 평가 문제집 고2  국어','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 122,'국가수준 학업 성취도 평가 문제집 고2  영어','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 123,'국가수준 학업 성취도 평가 문제집 고2  수학','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 124,'돌잡이 한글 18종+디지털 북','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 125,'돌잡이 수학 18종+디지털 북','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 126,'빅키즈 수학 29종+디지털 북','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 127,'빅키즈 지식자람 25종+디지털 북','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 128,'돌잡이 영어 33종+ 디지털 북','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 129,'돌잡이 한글 18종+ 디지털 북','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 130,'탐험스티커 3종 세트 동물+탈것+영화','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 131,'코딩토이 마이빅 46종+전용 앱 2종','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 132,'MOYAMONG & Friends','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 133,'MOYAMONG & Friends','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 134,'MOYAMONG & Friends','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 135,'MOYAMONG & Friends','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 136,'MOYAMONG & Friends','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 137,'MOYAMONG & Friends','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 138,'MOYAMONG & Friends','lecture_video02.mp4', DEFAULT);
---------------------------------------------------------------------------------------------------

-- 입고 테이블 생성
create table receive(
                        re_no INT primary KEY AUTO_INCREMENT,								-- 입고 번호
                        pro_no int not NULL,                              			   -- 상품 번호
                        amount int default 1,	         									-- 입고 수량
                        re_price int default 1000,			    								-- 입고 가격
                        resdate timestamp default CURRENT_TIMESTAMP		    			-- 입고 일시
);

---------------------------------------------------------------------------------------------------

-- 출고 테이블 생성
create table serve(
                      se_no int primary KEY AUTO_INCREMENT,								-- 출고 번호
                      pro_no int not NULL, 		                     			   -- 상품 번호
                      se_price int default 1000,					   				 	-- 출고 가격
                      amount int default 1,				         						-- 출고 수량
                      resdate timestamp default CURRENT_TIMESTAMP		    			-- 출고 일시
);

SELECT * FROM serve;

---------------------------------------------------------------------------------------------------

-- 배송 테이블 생성
create table delivery(
                         del_no int primary KEY AUTO_INCREMENT,						-- 배송 번호
                         pay_no int not NULL, 												-- 결제 번호
                         custom_id varchar(20) not NULL,									-- 고객 아이디
                         del_addr varchar(300) not NULL, 								-- 배송지
                         cus_tel varchar(13) not NULL,									-- 고객 연락처
                         del_com varchar(100),												-- 배송 회사
                         del_tel varchar(13),												-- 배송 기사님 전화번호
                         del_state int default 0,											-- 배송 상태 -> (0 : 입고 중, 1 : 출하 중, 2 : 상차, 3 : 하차, 4 : 캠프 도착, 5 : 배송 중, 6 : 배송 도착)
                         del_date timestamp default CURRENT_TIMESTAMP,				-- 배송 출발일
                         res_date varchar(13),												-- 배송 도착일
                         del_code varchar(30)												-- 송장 코드
);

--------------------------------------------------------------

-- 결제 테이블 생성
create table payment(
                        pay_no INT primary KEY AUTO_INCREMENT,							-- 결제 번호
                        cus_id varchar(20) not NULL,										-- 고객 아이디
                        cus_num varchar(100),												-- 고객 번호
                        pro_no int not NULL,													-- 상품 번호
                        amount int default 1,												-- 결제 수량
                        pay_method varchar(100),											-- 결제 수단
                        pay_com varchar(100),												-- 결제 회사
                        pay_price int default 1000,										-- 결제 금액
                        pay_account varchar(100) NOT NULL,								-- 결제 카드 번호
                        del_no INT NOT NULL,													-- 배송 번호(랜덤번호 추출)
                        pay_resdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP -- 결제 일시 지정
);

--------------------------------------------------------------

-- 카테고리 테이블
create table category(
                         cate_no varchar(4) primary key,
                         cate_name varchar(100) not null
);

-- 카테고리 등록
insert into category values('A', '초등교과서');
insert into category values('B', '초등참고서');
insert into category values('C', '초등문제집');
insert into category values('D', '초등기타');
insert into category values('E', '중등교과서');
insert into category values('F', '중등참고서');
insert into category values('G', '중등문제집');
insert into category values('H', '중등기타');
insert into category values('I', '고등교과서');
insert into category values('J', '고등참고서');
insert into category values('K', '고등문제집');
insert into category values('L', '고등기타');
insert into category values('M', '일반교과서');
insert into category values('N', '일반참고서');
insert into category values('O', '일반문제집');
insert into category values('P', '일반기타');
insert into category values('Q', '유아콘텐츠');
insert into category values('R', '유아놀이');
insert into category values('S', '유아기타');
insert into category values('T', '해외서적');
insert into category values('U', '해외콘텐츠');

--------------------------------------------------------------

-- 카트 테이블 생성
create table cart(
                     cart_no serial primary KEY,								-- 카트 번호
                     cus_id varchar(20) not NULL,								-- 고객 아이디
                     pro_no integer not NULL,									-- 상품 번호
                     amount integer not NULL              				   -- 상품 수량
);

--------------------------------------------------------------

-- 후기 테이블 생성
CREATE TABLE review(
                       rev_no int PRIMARY KEY AUTO_INCREMENT, 			            			-- 리뷰 번호
                       mem_id VARCHAR(16) NOT NULL, 													-- 회원 아이디
                       pay_no INT NOT NULL, 																-- 결제 번호
                       pro varchar(200) NOT NULL, 														-- 상품명
                       star INT DEFAULT 5, 																-- 별점
                       content VARCHAR(1000), 															-- 리뷰 내용
                       regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,					-- 리뷰 작성 일자
                       pro_no INT NOT NULL  																-- 상품 번호
);

--------------------------------------------------------------

-- 재고 뷰 생성
create view inventory as (select re_no, amount from receive EXCEPT select se_no, amount from serve);

select * from product;

select * from payment;

--------------------------------------------------------------

-- 상품 목록
select * from product order by pro_no;

--------------------------------------------------------------

-- 신상품 목록
select * from product order by pro_no desc limit 5;

--------------------------------------------------------------

-- 베스트셀러 상품 목록
select * from product where pro_no in (select pro_no from payment group by pro_no order by sum(amount) desc limit 5);

--------------------------------------------------------------

-- 카테고리별 신상품 목록
select * from product where cate=? order by pro_no desc limit 3;

--------------------------------------------------------------

-- 카테고리별 베스트셀러 상품 목록
select * from product where pcode in (select pro_no from payment group by pro_no order by sum(amount)) and cate=? limit 3;

--------------------------------------------------------------

-- 상품 등록
insert into product values(default, ?, '', ?, ?, ?, ?, ?, ?, ?, default);

update product set pro_no = concat(cate_id, pro_no) where pro_no=1;

--------------------------------------------------------------

-- 상품 제거
delete from product where pro_no=?;

--------------------------------------------------------------

-- 상품 정보 변경
update product set pname=?, cate=?, pcomment=?, plist=?, price=?, imgsrc1=?, imgsrc2=?, imgsrc3=? where pno=?;

--------------------------------------------------------------

-- 입고 조회
select * from receive;

--------------------------------------------------------------

-- 입고 처리 패턴
insert into receive values (default, ?, ?, ?, default);

insert into receive(pno, amount, rprice) values (?, ?, ?);

--------------------------------------------------------------

-- 상품, 결제, 출고, 배송, 카트 테이블 확인
select * from product;
select * from payment;
select * from serve;
select * from delivery;
select * from cart;

--------------------------------------------------------------

-- 출고 처리 패턴
insert into payment values (default, ?, ?, ?, ?, ?, ?, ?, '');
insert into serve values(default, ?, ?, ?, default);
insert into delivery values (default, ?, ?, ?, ?, '','',default,default,'','');
delete from cart where cartno=?;

--------------------------------------------------------------

-- 반품 처리 패턴(배송전이면 반품 가능)
delete from payment where sno=?;
insert into receive values (default, ?, ?, ?, default);
delete from serve where sno=?;
insert into cart values (default, ?, ?, ?);
delete from delivery where sno=?;

--------------------------------------------------------------

-- 배송처리
update delivery set pcom=?, ptel=?, pstate=1, sdate=current_timestamp, rdate=?, bcode=? where dno=?;

--------------------------------------------------------------

-- 배송 완료 처리
update delivery set pstate=2 where dno=?;


-- 전체 이익 통계 뷰 작성
create view profit as (select pro_no, sum(sprice*amount) as tot from serve group by pro_no EXCEPT select pro_no, sum(rprice*amount) as tot from receive group by pro_no);

select * from profit;
select * from addinfo;
select * from receive;
select * from delivery;
select * from payment;
select * from custom;
select * from inventory;team32productproduct