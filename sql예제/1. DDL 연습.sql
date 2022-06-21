
-- DDL : ������ ���Ǿ� 
-- CREATE, ALTER, DROP, RENAME, TRUNCATE

DROP TABLE board;

-- CREATE TABLE : ���̺��� ����
CREATE TABLE board (
    bno NUMBER(10)
    , title VARCHAR2(200) NOT NULL
    , writer VARCHAR2(40) NOT NULL
    , content CLOB
    , reg_date DATE DEFAULT SYSDATE
    , view_count NUMBER(10) DEFAULT 0
);

-- ALTER : �����ͺ��̽��� ������ ����

-- PK ����
ALTER TABLE board
ADD CONSTRAINT pk_board_bno
PRIMARY KEY (bno);

-- ������ �߰�
INSERT INTO board
    (bno, title, writer, content)
VALUES 
    (1, '�ȴ�?', '�ٲٱ��', '�����Ͼ����� ������');
    
INSERT INTO board
    (bno, title, writer)
VALUES 
    (2, '���ִ� ����', '����ȣȣ');
    
COMMIT;



SELECT * FROM board;


-- �������� ����
-- �Խù��� ����� ����
--   1   :  M

-- ��� ���̺� ����
CREATE TABLE REPLY (
    rno NUMBER(10)
    , r_content VARCHAR2(400)
    , r_writer VARCHAR2(40) NOT NULL
    , bno NUMBER(10)
    , CONSTRAINT pk_reply_rno PRIMARY KEY (rno) -- PK ����
);

-- �ܷ�Ű ���� (FOREIGN KEY) : ���̺� ���� ���� ���� ����
ALTER TABLE reply 
ADD CONSTRAINT fk_reply_bno
FOREIGN KEY (bno)
REFERENCES board (bno);

-- �÷� ����
-- �÷� �߰�
ALTER TABLE reply
ADD (r_reg_date DATE DEFAULT SYSDATE);

SELECT * FROM reply;

-- �÷� ����
ALTER TABLE board
DROP COLUMN view_count;

-- �÷� ����
ALTER TABLE board
MODIFY (title VARCHAR2(500));

SELECT * FROM board;

-- ���̺� ����
DROP TABLE reply; -- ���̺� ���� ����
TRUNCATE TABLE board; -- ���̺� ���� ��ü ���� - �ѹ� �Ұ�












