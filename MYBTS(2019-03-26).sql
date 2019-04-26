--mybts 화면
SELECT * FROM tbl_board ORDER BY b_date DESC, b_time DESC;

SELECT ROWNUM, b_userid, b_date,b_time,b_subject FROM tbl_board WHERE ROWNUM BETWEEN 1 AND 10 ORDER BY b_date DESC, b_time DESC;

--sub query로 변경
SELECT ROWNUM, M.b_userid, M.b_date,M.b_time,m.b_subject 
FROM( SELECT * FROM tbl_board ORDER BY b_date DESC, b_time DESC) M
WHERE ROWNUM BETWEEN 1 AND 10;

--INDEX생성
CREATE INDEX idx_board ON tbl_board(b_date,b_time);  --다중칼럼 인덱스
CREATE INDEX idx_board_subject ON tbl_board(b_subject);  --단일칼럼 인덱스
--TABLE의 칼럼들 중에서 빈번하게 SELECT 조건, ORDER BY 조건에 사용되는 칼럼을 INDEX라는 것으로 생성
--기본 TABLE과 별도로 검색칼럼과 실제 데이터 REC 주소만 갖는 일종의 시스템 테이블이다.
--INDEX는 항상 검색칼럼을 기준으로 정렬이 되어 있다. 그래서 INDEX가 되어있는 칼럼을 기준으로 검색을 하면
--그렇지 않은 칼럼을 검색할 때보다 엄청난 속도 향상을 보여준다.

--단, INSERT, UPDATE, DELETE가 이루어 질 때에는 실제 TABLE과 INDEX를 동시에 갱신해야 하고 INDEX는 정렬 작업까지
--수행 해야 하기 때문에 상당한 속도 저하가 발생한다.

--PK키는 자동으로 기본 INDEX로 설정이 된다.(PK는 기본적으로 NOT NULL,UNIQUE,INDEX속성을 갖기 때문)
CREATE TABLE tbl_bbs_file(
    id              NUMBER              PRIMARY KEY,
    parent_id       NUMBER              NOT NULL,
    file_name       nVARCHAR2(125),
    save_file_name  nVARCHAR2(125)
);

ALTER TABLE tbl_bbs_file ADD CONSTRAINT fk_bbs_file FOREIGN KEY (parent_id) REFERENCES tbl_board(id) ON DELETE CASCADE;

DROP INDEX idx_board;

CREATE INDEX idx_board_date ON tbl_board(b_date DESC);
CREATE INDEX idx_board_time ON tbl_board(b_time DESC);

DROP INDEX idx_board_date;
DROP INDEX idx_board_time;

CREATE INDEX idx_board ON tbl_board(b_date DESC,b_time DESC);

--pagenation을 만들기 위한 쿼리
--오라클에서는 몇개의 필요한 개수만큼 SELECT하는 기능이 없기 때문에 ROWNUM라는 가상의 칼럼을 만들어서 필요한
--개수만큼만 SELECT를 하는데 ROWNUM가 ORDER BY 옵션이 포함되면 순서가 엉망이 되어 원하는 기능을 구현할 수 없다.
--그래서 SUB QUERY 를 사용해서 트릭으로 구현한다.
SELECT ROWNUM,BM.* FROM
(SELECT * FROM tbl_board ORDER BY b_date DESC, b_time DESC) BM
WHERE ROWNUM BETWEEN 1 AND 10;

SELECT * FROM tbl_board WHERE b_date > '0000-00-00' AND b_time > '00:00:00';

SELECT * FROM(SELECT ROWNUM R, B.*  FROM tbl_board B WHERE b_date > '0000-00-00')
WHERE R BETWEEN 100 AND 200;

SELECT * FROM(SELECT ROWNUM, *  FROM tbl_board WHERE b_date > '0000-00-00')
WHERE ROWNUM BETWEEN 100 AND 200;