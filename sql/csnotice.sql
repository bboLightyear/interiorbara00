--고객센터 관련 sql


-----------------------------------커밋,롤백
commit;
rollback;

------------------------------------테이블, 시퀀스 생성
create table cs_noticeboard (
nbno number primary key, --글번호
nbtitle varchar2(50),    --글제목
nbcontent varchar2(300), --글내용
nbwriter varchar2(30),   --작성자
nbhit number,            --조회수
nbdate date,             --작성일
nbgroup number,          --그룹 (답글 구분용)
nbstep number,           --스탭 (답글 구분용)
nbindent number,         --인텐트 (답글 구분용)
nbfile varchar2(50)      --첨부파일
);

create sequence cs_noticeboard_seq;

create table cs_noticeboard_img(
nbno number primary key, 
nbfile varchar2 (500)
);

--img 파일과 fk 생성
ALTER TABLE cs_noticeboard_img
ADD CONSTRAINTS qnaimg_fk FOREIGN KEY(nbno)
REFERENCES cs_noticeboard(nbno);

------------------------------------ select 문
select * from cs_noticeboard;

select nbno,nbtitle,nbcontent,nbwriter,nbhit,nbdate,nbfile
from cs_noticeboard
where nbno='2';

select s.name, p.name 
from cs_noticeboard b left outer join cs_noticeboard_img i 
on p.profno=s.profno;

SELECT NBNO,NBWRITER,NBTITLE,NBCONTENT,NBDATE,NBHIT,NBGROUP,NBSTEP,NBINDENT 
		FROM (SELECT ROWNUM NUM,N.* 
				FROM (SELECT NBNO,NBWRITER,NBTITLE,NBCONTENT,NBDATE,NBHIT,NBGROUP,NBSTEP,NBINDENT
		FROM cs_noticeboard
		ORDER BY NBGROUP DESC,NBSTEP ASC)N
		WHERE NBTITLE LIKE '%'||'안녕'||'%'
		)WHERE NUM BETWEEN 1 AND 5;
        
        
------------------------------------ insert 문
insert into cs_noticeboard(nbno,nbtitle,nbcontent,nbwriter,nbhit,nbdate,nbgroup,nbstep,nbindent,nbfile) 
    values(cs_noticeboard_seq.nextval,'안녕하세요','안녕하세요안녕하세요안녕하세요안녕하세요','보근',0,sysdate,0,0,0,'00.png');

------------------------------------ delete 문

------------------------------------ update 문

