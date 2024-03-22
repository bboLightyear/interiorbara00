--------------------------------------------------------------------------------
-- FLASHBACK TABLE ���̺�� TO BEFORE DROP;

PURGE RECYCLEBIN;

COMMIT;

ROLLBACK;

--------------------------------------------------------------------------------
-- TABLE
-- OH_PHOTO_BOARD
-- CREATE
CREATE TABLE OH_PHOTO_BOARD (
    PB_NO		    NUMBER PRIMARY KEY,   -- ��ȣ
    PB_USER		    VARCHAR2(30),         -- �����
    PB_TITLE	    VARCHAR2(50),         -- ����
    PB_CONTENT	    VARCHAR2(200),        -- ����
    PB_DATE		    DATE DEFAULT SYSDATE, -- ��¥
    PB_LIKE		    NUMBER DEFAULT 0,     -- ���ƿ��
    PB_SCRAP	    NUMBER DEFAULT 0,     -- ��ũ����
    PB_REPLY	    NUMBER DEFAULT 0,     -- ��ۼ�
    PB_LINK		    NUMBER DEFAULT 0,     -- ������
    PB_HIT		    NUMBER DEFAULT 0,     -- ��ȸ��
    PB_CATEGORY	    VARCHAR2(50),         -- #ī�װ�
    PB_RESIDENCE    VARCHAR2(30),         -- �ְ�����
    PB_ROOM		    VARCHAR2(30),         -- ����
    PB_STYLE		VARCHAR2(30),         -- ��Ÿ��
    PB_SKILL		VARCHAR2(30)          -- ����/������
);

DROP TABLE OH_PHOTO_BOARD;

DROP TABLE OH_PHOTO_BOARD PURGE;

-- SELECT

SELECT * FROM OH_PHOTO_BOARD;

SELECT MAX(PB_NO) FROM OH_PHOTO_BOARD;

-- SEQUENCE

CREATE SEQUENCE OH_PHOTO_BOARD_SEQ;

DROP SEQUENCE OH_PHOTO_BOARD_SEQ;

-- INSERT

INSERT INTO 
    OH_PHOTO_BOARD
VALUES (
    OH_PHOTO_BOARD_SEQ.NEXTVAL, 'ȫ�浿', '�浿�� ���ڶ�', '�ȳ��ϼ���.. ȫ�浿�Դϴ�...', SYSDATE, 
    0, 0, 0, 0, 0, 
    '#�׳�', '����Ʈ', '�Ž�', '��Ƽ��', '����'
);



     
--------------------------------------------------------------------------------
-- TABLE
-- OH_PHOTO_ATTACH
-- CREATE
CREATE TABLE OH_PHOTO_ATTACH (
    PA_NO       NUMBER PRIMARY KEY, -- ��ȣ
    PA_ATTACH   VARCHAR2(50),       -- ����÷��
    PB_NO       NUMBER CONSTRAINT   -- ��ȣ(OH_PHOTO_BOARD)     
                           PA_PB_NO_FK
                       REFERENCES 
                           OH_PHOTO_BOARD(PB_NO) 
                       ON DELETE CASCADE 
);
-- DROP
DROP TABLE OH_PHOTO_ATTACH;
-- DROP PURGE
DROP TABLE OH_PHOTO_ATTACH PURGE;

-- SEQUENCE
-- CREATE
CREATE SEQUENCE OH_PHOTO_ATTACH_SEQ;
-- DROP
DROP SEQUENCE OH_PHOTO_ATTACH_SEQ;

-- CONSTRAINT
-- ��ȸ
SELECT * FROM ALL_CONSTRAINTS
WHERE TABLE_NAME = 'OH_PHOTO_ATTACH';
-- ����
ALTER TABLE OH_PHOTO_ATTACH DROP CONSTRAINT PA_PB_NO_FK;

-- SELECT
-- ���̺� ��ü ��ȸ
SELECT * FROM OH_PHOTO_ATTACH;
-- �Խù��� �׷�, ù��° �̹��� ��ȣ��ȸ
SELECT MIN(PA_NO) FROM OH_PHOTO_ATTACH GROUP BY PB_NO;
-- ���� �Խù��� ù��° �̹��� ��ȸ
SELECT 
    * 
FROM 
    OH_PHOTO_ATTACH 
WHERE 
    PA_NO IN (
              SELECT 
                  MIN(PA_NO) 
              FROM 
                  OH_PHOTO_ATTACH 
              GROUP BY 
                  PB_NO
             ) 
ORDER BY 
    PA_NO
;
-- �� ���, LEFT OUTER JOIN WITH OH_PHOTO_BOARD
SELECT 
    * 
FROM 
    OH_PHOTO_BOARD OH1, (SELECT 
                            * 
                         FROM 
                            OH_PHOTO_ATTACH 
                         WHERE 
                         PA_NO IN (
                                   SELECT 
                                       MIN(PA_NO) 
                                   FROM 
                                       OH_PHOTO_ATTACH 
                                   GROUP BY 
                                       PB_NO
                                  ) 
                         ORDER BY 
                            PA_NO
                        ) OH2
WHERE 
    OH1.PB_NO = OH2.PB_NO(+)
;


		SELECT 
		    * 
		FROM 
		    OH_PHOTO_BOARD OH1 
		LEFT OUTER JOIN 
			(SELECT 
                * 
             FROM 
                OH_PHOTO_ATTACH 
             WHERE 
             PA_NO IN (
                       SELECT 
                           MIN(PA_NO) 
                       FROM 
                           OH_PHOTO_ATTACH 
                       GROUP BY 
                           PB_NO
                      ) 
             ORDER BY 
                PA_NO
            ) OH2
		ON
			OH1.PB_NO = OH2.PB_NO;	










-- INSERT
INSERT INTO 
    OH_PHOTO_ATTACH (PA_NO, PA_ATTACH) 
VALUES (
    OH_PHOTO_ATTACH_SEQ.NEXTVAL, '�����̸�'
);
-- DELETE
DELETE FROM OH_PHOTO_ATTACH WHERE PA_NO = 1;





PURGE RECYCLEBIN;

COMMIT;

ROLLBACK;



--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------