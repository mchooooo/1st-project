-- 작성 시 주의점
rollback;
-- 테이블 및 속성 명명 시 대소문자 구분이 불가능하므로 단어와 단어는 '_' 로 구분
-- 시퀀스 명명은 '속성_SEQ' 으로 통일
/* 문자 한 글자는 2BYTE, 한글의 경우 3BYTE. 즉, VARCHAR2(30)은 영문숫자 15글자 또는 한글 10글자 저장 가능.
    각 속성에 저장되어야 하는 문자열에 따라 길이 조절을 적절히 할 것.
*/
-- INSERT문에 속성명 작성 권장
-- SELECT문에 * 대신 속성명 작성 권장
-- 'NULL'은 NULL이라는 값의 문자열이므로 INSERT문에 속성값이 비어있다면 NULL로 처리할 것.
update member set balance = 50000 where id = 'test';

DROP TABLE USE_DETAIL;
DROP TABLE REVIEW;
DROP TABLE GYM;
DROP TABLE MEMBER;

SELECT CODE, MEMBER_ID, GYM_CODE, PRICE, USE_START_HOUR, STATE FROM USE_DETAIL WHERE GYM_CODE = 83 AND STATE = 1

UPDATE USE_DETAIL SET STATE = CASE 
                                WHEN SYSDATE - TO_DATE(USE_START_HOUR) > 1.0 THEN -1
                                ELSE 1
                                END
                                where state = 1;


--DROP TABLE POINT;

--헬스장 PK를 위한 시퀀스
CREATE SEQUENCE GYM_CODE_SEQ;
CREATE SEQUENCE REVIEW_CODE_SEQ;
CREATE SEQUENCE USE_DETAIL_SEQ;

drop sequence gym_code_seq;
drop sequence review_code_seq;
drop sequence use_detail_seq;

--헬스장 테이블
CREATE TABLE GYM(
    CODE NUMBER PRIMARY KEY,
    NAME VARCHAR2(120),
    ADDR VARCHAR2(300),
    PHONE_NUM VARCHAR2(30),
    FILE_NAME VARCHAR2(300),
    GYM_CAPACITY NUMBER,
    PRICE NUMBER,
    GYM_COMMENT VARCHAR2(4000),
    WEEKDAY_HOUR VARCHAR2(20),
    WEEKEND_HOUR VARCHAR2(20),
    STAR_SCORE NUMBER
);

--헬스장 등록
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(GYM_CODE_SEQ.NEXTVAL, '스포짐', '대왕판교로670 유스페이스2 B1', '010-1234-3333', '1438257600892.jpeg', 55, 300, '판교 스포짐은 대한민국 휘트니스 대표 브랜드로 판교테크노밸리 최대규모의 고품격 Total Fitness입니다. 최고의 시설과 최첨단 장비, 전문강사진으로 이루어져 있으며 동종업계 최초로 스포츠 메디컬 케어 시스템을 갖추고 있어 체계적인 건강관리와 최상의 서비스를 제공합니다.', '08:00-22:00', '08:00-22:00', 0);
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(GYM_CODE_SEQ.NEXTVAL, '헬스매니아', '야탑동 537-6', '031-706-1156', '181126-1-2000-fac-LTSM.jpg.thumb.768.768.jpg', 80, 200, '판교스포츠센터는 지역 주민의 건강증진 및 여가선용, 건강한 행복을 위해 수영장, 다목적실, 헬스장, 문화교실 등 다양한 시설로 2013년 3월 1일 개관하였습니다.
쾌적한 시설과 다양한 프로그램을 제공하기 위해 전 직원이 최선의 노력을 다하고 있으며, 시민 여러분의 커다란 관심과 호응 속에 운영되고 있습니다.
앞으로도 저희 판교스포츠센터는 이용 시민의 행복을 위해 최선을 다해 시민 여러분을 위한 최고의 시설이 되도록 하겠습니다. 감사합니다.', '06:00-21:00', '05:00-11:00', 0);
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(GYM_CODE_SEQ.NEXTVAL, '판교스포츠 센터', '판교로228번길 55KR', '031-724-4660', '52e376cd81d2a10c485f1108aa664c37.jpg', 90, 100, '헬스&휘트니스센터 [스타메이트]는 분당 이매동에 위치하고 있으며 분당 최고의 시설, 최상의 시스템을 갖추고 2008년 2월에 오픈 하였습니다. 
 호텔식 고급 인테리어와 첨단 장비. 최신 헬스장비. 개인별 측정장비와 운동 프로그램을 접목한 운동처방프로그램을 제공하는 헬스/에어로빅/요가/GX 프로그램을 운영하는 헬스 & 휘트니스 전문센터입니다.
저희 휘트니스 클럽은 등록시 무조건 1+1 시스템을 가지고 등록시에는 한명가격으로 2명이 동시에 등록이 가능하십니다. 
 주말에는 가족 & 친구 모두 입장이 가능 하오니 언제든 편하게 등록 해주시면 감사하겠습니다', '07:00-22:00', '08:00-24:00', 0);
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(GYM_CODE_SEQ.NEXTVAL, '스피드 핏', '판교로606번길 45 푸르지오시티 3층', '031-707-9682', 'sub21-02.jpg', 70, 700, '판교 스포짐은 대한민국 휘트니스 대표 브랜드로 판교테크노밸리 최대규모의 고품격 Total Fitness입니다. 최고의 시설과 최첨단 장비, 전문강사진으로 이루어져 있으며 동종업계 최초로 스포츠 메디컬 케어 시스템을 갖추고 있어 체계적인 건강관리와 최상의 서비스를 제공합니다.', '05:00-22:00', '00:00-24:00', 0);
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(GYM_CODE_SEQ.NEXTVAL, '201휘트니스클럽', '이매 2동 판교로 446', '031-706-9841', '1438257600892.jpeg', 70, 100, '판교스포츠센터는 지역 주민의 건강증진 및 여가선용, 건강한 행복을 위해 수영장, 다목적실, 헬스장, 문화교실 등 다양한 시설로 2013년 3월 1일 개관하였습니다.
쾌적한 시설과 다양한 프로그램을 제공하기 위해 전 직원이 최선의 노력을 다하고 있으며, 시민 여러분의 커다란 관심과 호응 속에 운영되고 있습니다.
앞으로도 저희 판교스포츠센터는 이용 시민의 행복을 위해 최선을 다해 시민 여러분을 위한 최고의 시설이 되도록 하겠습니다. 감사합니다.', '09:00-22:00', '07:00-24:00', 0);
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(GYM_CODE_SEQ.NEXTVAL, '스타메이트', '이매1동 106-5', '031-708-9679', '181126-1-2000-fac-LTSM.jpg.thumb.768.768.jpg', 40, 100, '헬스&휘트니스센터 [스타메이트]는 분당 이매동에 위치하고 있으며 분당 최고의 시설, 최상의 시스템을 갖추고 2008년 2월에 오픈 하였습니다. 
 호텔식 고급 인테리어와 첨단 장비. 최신 헬스장비. 개인별 측정장비와 운동 프로그램을 접목한 운동처방프로그램을 제공하는 헬스/에어로빅/요가/GX 프로그램을 운영하는 헬스 & 휘트니스 전문센터입니다.
저희 휘트니스 클럽은 등록시 무조건 1+1 시스템을 가지고 등록시에는 한명가격으로 2명이 동시에 등록이 가능하십니다. 
 주말에는 가족 & 친구 모두 입장이 가능 하오니 언제든 편하게 등록 해주시면 감사하겠습니다', '08:00-22:00', '07:00-24:00', 0);
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(GYM_CODE_SEQ.NEXTVAL, '고투강남점', '역삼1동 826-26', '02-3466-4060', '52e376cd81d2a10c485f1108aa664c37.jpg', 30, 200, '판교 스포짐은 대한민국 휘트니스 대표 브랜드로 판교테크노밸리 최대규모의 고품격 Total Fitness입니다. 최고의 시설과 최첨단 장비, 전문강사진으로 이루어져 있으며 동종업계 최초로 스포츠 메디컬 케어 시스템을 갖추고 있어 체계적인 건강관리와 최상의 서비스를 제공합니다.', '05:00-22:00', '06:00-24:00', 0);
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(GYM_CODE_SEQ.NEXTVAL, '투엑휘트니스', '청담동44-15', '02-546-0079', 'sub21-02.jpg', 40, 500, '판교스포츠센터는 지역 주민의 건강증진 및 여가선용, 건강한 행복을 위해 수영장, 다목적실, 헬스장, 문화교실 등 다양한 시설로 2013년 3월 1일 개관하였습니다.
쾌적한 시설과 다양한 프로그램을 제공하기 위해 전 직원이 최선의 노력을 다하고 있으며, 시민 여러분의 커다란 관심과 호응 속에 운영되고 있습니다.
앞으로도 저희 판교스포츠센터는 이용 시민의 행복을 위해 최선을 다해 시민 여러분을 위한 최고의 시설이 되도록 하겠습니다. 감사합니다.', '10:00-22:00', '06:00-24:00', 0);
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(GYM_CODE_SEQ.NEXTVAL, '자마이카휘트니스', '봉천동 862-1 13층', '02-6276-8588', '1438257600892.jpeg', 20, 300, '헬스&휘트니스센터 [스타메이트]는 분당 이매동에 위치하고 있으며 분당 최고의 시설, 최상의 시스템을 갖추고 2008년 2월에 오픈 하였습니다. 
 호텔식 고급 인테리어와 첨단 장비. 최신 헬스장비. 개인별 측정장비와 운동 프로그램을 접목한 운동처방프로그램을 제공하는 헬스/에어로빅/요가/GX 프로그램을 운영하는 헬스 & 휘트니스 전문센터입니다.
저희 휘트니스 클럽은 등록시 무조건 1+1 시스템을 가지고 등록시에는 한명가격으로 2명이 동시에 등록이 가능하십니다. 
 주말에는 가족 & 친구 모두 입장이 가능 하오니 언제든 편하게 등록 해주시면 감사하겠습니다', '10:00-22:00', '06:00-24:00', 0);
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(GYM_CODE_SEQ.NEXTVAL, '리버스휘트니스', '봉천동 관악로 217', '02-885-8628', '181126-1-2000-fac-LTSM.jpg.thumb.768.768.jpg', 70, 400, '판교 스포짐은 대한민국 휘트니스 대표 브랜드로 판교테크노밸리 최대규모의 고품격 Total Fitness입니다. 최고의 시설과 최첨단 장비, 전문강사진으로 이루어져 있으며 동종업계 최초로 스포츠 메디컬 케어 시스템을 갖추고 있어 체계적인 건강관리와 최상의 서비스를 제공합니다.', '07:00-22:00', '05:00-24:00', 0);
insert into gym(code) values(-1);



--사업자 체크
INSERT INTO GYM(CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE) 
VALUES(-1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL); 

COMMIT
--모든 헬스장 출력
SELECT CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE FROM GYM;

--헬스장 이름으로 검색
SELECT CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE FROM GYM WHERE NAME LIKE '%휘트니스%';

--헬스장 주소로 검색
SELECT CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE FROM GYM WHERE ADDR LIKE '%판교%';

--헬스장 코드로 검색
SELECT CODE, NAME, ADDR, PHONE_NUM, FILE_NAME, GYM_CAPACITY, PRICE, GYM_COMMENT, WEEKDAY_HOUR, WEEKEND_HOUR, STAR_SCORE FROM GYM WHERE CODE = 65;

--헬스장 코드를 이용해 삭제
DELETE FROM GYM WHERE CODE = 65;
DELETE FROM GYM;



--회원 테이블
CREATE TABLE MEMBER(
    ID VARCHAR2(120) NOT NULL,
    PWD VARCHAR(210) NOT NULL,
    NAME VARCHAR2(120),
    PHONE_NUM VARCHAR2(30),
    GYM_CODE NUMBER,
    BALANCE NUMBER,

    CONSTRAINT MEMBER_PK PRIMARY KEY (ID),
    CONSTRAINT MEMBER_GYM_CODE_FK FOREIGN KEY (GYM_CODE) REFERENCES GYM(CODE)
);


update member set gym_code = 83 where id = 'ceo';



--회원 추가
INSERT INTO MEMBER (ID, PWD, NAME, PHONE_NUM, GYM_CODE, BALANCE)
VALUES ('AAA', 'SSS', 'DDD','010-9179-3380', NULL, 0); 
INSERT INTO MEMBER (ID, PWD, NAME, PHONE_NUM, GYM_CODE, BALANCE)
VALUES ('QQQ', 'SSS', 'DDD','010-9179-3380', 9, 500000); 
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE, BALANCE)
VALUES('GIJOE','1234' ,'이병헌','010-8748-2314',1, 1000000);
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE, BALANCE)
VALUES('DONGSEOK','0070','마동석','010-8877-3321',null, 250000);
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE, BALANCE)
VALUES('QUEEN','1171','이효리','010-8457-3721',4, 100000);
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE, BALANCE)
VALUES('JEONG','3347','정해인','010-3697-3421',null, 5000);
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE, BALANCE)
VALUES('VAGABOND','1277','이승기','010-7814-8641',3, 90000);
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE, BALANCE)
VALUES('SUNSHINE','4321','김태리','010-7231-7721',2, 343000);
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE, BALANCE)
VALUES('SEOJUN','4545','박서준','010-6352-1147',null, 5700);
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE, BALANCE)
VALUES('SONG','4874','송혜교','010-4567-1234',7, 130000);
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE, BALANCE)
VALUES('JONGSEOK','7979','이종석','010-7897-1427',null, 350000);
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE, BALANCE)
VALUES('JOONGKI','5756','송중기','010-4735-8721',8, 0);

---sha256 test
INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE,BALANCE)
VALUES('testtest','03AC674216F3E15C761EE1A5E255F067953623C8B388B4459E13F978D7C846F4','송중기','010-4735-8721',null,50000);

delete from member where id='testtest';
delete from member where id='ceo';


SELECT ID, PWD, NAME, PHONE_NUM, GYM_CODE, BALANCE FROM MEMBER;
--회원 아이디로 회원 찾기
SELECT ID, PWD, NAME, PHONE_NUM, GYM_CODE, BALANCE FROM MEMBER WHERE ID = 'AAA';

--회원정보 수정 (아이디만 체크 OR 아이디 비번 한꺼번에 체크)
UPDATE MEMBER SET PWD = 'ZZZ', PHONE_NUM='010-8888-2322' WHERE ID = 'AAA';
UPDATE MEMBER SET PWD = 'ZZZ', PHONE_NUM='010-8888-2322' WHERE ID = 'AAA' AND PWD = 'SSS';

--회원 탈퇴
DELETE MEMBER WHERE ID = 'AAA';

INSERT INTO MEMBER(ID,PWD,NAME,PHONE_NUM,GYM_CODE,BALANCE)
VALUES('testtest','03AC674216F3E15C761EE1A5E255F067953623C8B388B4459E13F978D7C846F4','송중기','010-4735-8721',-1,50000);



--
----포인트 테이블
--CREATE TABLE POINT(
--    MEMBER_ID VARCHAR2(120) NOT NULL,
--    BALANCE NUMBER,
--    
--    CONSTRAINT POINT_PK PRIMARY KEY (MEMBER_ID),
--    CONSTRAINT POINT_MEMBER_ID_FK FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(ID)
--);
--
----포인트 초기화
--INSERT INTO POINT (MEMBER_ID, BALANCE) VALUES ('AAA', 0); 
--
----포인트 잔액 출력
--SELECT MEMBER_ID, BALANCE FROM POINT WHERE MEMBER_ID = 'AAA';
--
----포인트 잔액 갱신(양수 음수 관계 없이 사용 가능)
--UPDATE POINT SET BALANCE = BALANCE + -100 WHERE MEMBER_ID = 'AAA';
--
----포인트 레코드 삭제(회원 탈퇴 시)
--DELETE POINT WHERE MEMBER_ID = 'AAA';




--리뷰 테이블
CREATE TABLE REVIEW(
    CODE NUMBER,
    GYM_CODE NUMBER NOT NULL,
    MEMBER_ID VARCHAR2(120) NOT NULL,
    REG_DATE VARCHAR2(120),
    STAR_SCORE NUMBER,
    CONTENT VARCHAR2(4000),
    FILE_NAME VARCHAR2(200),
    
    CONSTRAINT REVIEW_PK PRIMARY KEY (CODE),
    CONSTRAINT REVIEW_GYM_CODE_FK FOREIGN KEY (GYM_CODE) REFERENCES GYM(CODE),
    CONSTRAINT STAR_SCORE_CK CHECK(STAR_SCORE BETWEEN 0 AND 5)
);

--리뷰 등록
INSERT INTO REVIEW (CODE, GYM_CODE, MEMBER_ID, REG_DATE, STAR_SCORE, CONTENT, FILE_NAME)
VALUES(REVIEW_CODE_SEQ.NEXTVAL, 9, 'QQQ', SYSDATE, 3, '괜춘', NULL);

--리뷰 목록
SELECT CODE, GYM_CODE, MEMBER_ID, REG_DATE, STAR_SCORE, CONTENT, FILE_NAME FROM REVIEW WHERE GYM_CODE = 9;

--리뷰 수정 (작성자만 수정하도록 ID 체크 필요)
UPDATE REVIEW SET STAR_SCORE = 2, CONTENT = '적당', FILE_NAME = NULL WHERE CODE = 21;
UPDATE REVIEW SET STAR_SCORE = 2, CONTENT = '적당', FILE_NAME = NULL WHERE CODE = 25 AND MEMBER_ID = 'AAA';

--리뷰 삭제 (작성자만 수정하도록 ID 체크 필요)
DELETE FROM REVIEW WHERE CODE = 3;
DELETE FROM REVIEW WHERE CODE = 25 AND MEMBER_ID = 'AAA';



--이용 상세 테이블
CREATE TABLE USE_DETAIL(
    CODE NUMBER,
    MEMBER_ID VARCHAR2(120) NOT NULL,
    GYM_CODE NUMBER NOT NULL,
    PRICE NUMBER,
    USE_START_HOUR VARCHAR2(30),
    STATE NUMBER,

    CONSTRAINT USE_DETAIL_PK PRIMARY KEY (CODE),
    CONSTRAINT USE_DETAIL_MEMBER_ID_FK FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(ID) on delete cascade,
    CONSTRAINT USE_DETAIL_GYM_CODE_FK FOREIGN KEY (GYM_CODE) REFERENCES GYM(CODE),
    CONSTRAINT USE_DETAIL_STATE_CK CHECK(STATE IN (-1, 0, 1))  
);

--이용 상세에 레코드 추가
INSERT INTO USE_DETAIL(CODE, MEMBER_ID, GYM_CODE, PRICE, USE_START_HOUR, STATE)
SELECT USE_DETAIL_SEQ.NEXTVAL, MEMBER.ID, GYM.CODE, GYM.PRICE, SYSDATE, 1 FROM MEMBER, GYM
WHERE MEMBER.ID = 'QQQ' AND GYM.CODE = 9;

INSERT INTO USE_DETAIL(CODE, MEMBER_ID, GYM_CODE, PRICE, USE_START_HOUR, STATE)
SELECT USE_DETAIL_SEQ.NEXTVAL, MEMBER.ID, GYM.CODE, GYM.PRICE, SYSDATE, 1 FROM MEMBER, GYM
WHERE MEMBER.ID = 'SONG' AND GYM.CODE = 7;


SELECT CODE, MEMBER_ID, GYM_CODE, PRICE, USE_START_HOUR, STATE FROM USE_DETAIL;
--회원 이용 내역
SELECT CODE, MEMBER_ID, GYM_CODE, PRICE, USE_START_HOUR, STATE FROM USE_DETAIL WHERE MEMBER_ID = 'AAA';
--헬스장 이용 신청자 목록
SELECT CODE, MEMBER_ID, GYM_CODE, PRICE, USE_START_HOUR, STATE FROM USE_DETAIL WHERE GYM_CODE = 64 AND STATE = 1;

--이용 상태 갱신
--정상 사용
UPDATE USE_DETAIL SET STATE = 0 WHERE CODE = 2;
--만료 24시간 
UPDATE USE_DETAIL SET STATE = CASE 
                                WHEN SYSDATE - TO_DATE(USE_START_HOUR) > 1.0 THEN -1
                                ELSE 1
                                END
                                where state = 1;

COMMIT
select * from gym;
select * from member;
UPDATE MEMBER SET GYM_CODE = (select LAST_NUMBER from user_sequences where SEQUENCE_NAME = 'GYM_CODE_SEQ') where id = 'testtest3';
 SELECT GYM_CODE_SEQ.CURRVAL FROM DUAL 

 
 UPDATE MEMBER SET GYM_CODE = (select max(code) from gym) where id = 'testtest3';
 UPDATE MEMBER SET GYM_CODE = (select max(code) from gym) where id = 'testtest4';
 
 
create or replace procedure update_bal_to_use
(
    memberid in member.id%type,
    ceoid in member.id%type,
    price in gym.price%TYPE
)
is
begin
    UPDATE MEMBER SET BALANCE = BALANCE - price WHERE ID = memberid;
    UPDATE MEMBER SET BALANCE = BALANCE + price WHERE ID = ceoid;
end;

 select * from use_detail;
 
 create or replace procedure update_bal_to_use
(
    memberid in member.id%type,
    ceoid in member.id%type,
    price in gym.price%TYPE
)
is
begin
    UPDATE MEMBER SET BALANCE = BALANCE - price WHERE ID = memberid;
    UPDATE MEMBER SET BALANCE = BALANCE + price WHERE ID = ceoid;
end;
 
 
 