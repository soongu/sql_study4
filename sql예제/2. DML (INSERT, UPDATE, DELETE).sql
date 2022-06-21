

-- DML : ������ ���۾�
-- SELECT, INSERT, UPDATE, DELETE

INSERT INTO board
    (bno, title, content, writer, reg_date)
VALUES
    (1, '�����̾�~', '������~~~', '�Ѹ�', SYSDATE + 1);
    
-- NN �������� ���� - ���� ����
INSERT INTO board
    (bno, content, writer)
VALUES
    (2, '����ȣȣ~~~', '������');

-- PK�� UNIQUE �������� ����
INSERT INTO board
    (bno, title, writer)
VALUES
    (1, '����ȣȣ~~~', '������');
    
INSERT INTO board
    (bno, title, writer)
VALUES
    (2, '����ȣȣ����~~~', '±±��');

-- �÷��� ������� �ʾ��� ��� �ݵ�� ��� �÷��� ���� ������� ä���� ��
INSERT INTO board
VALUES
    (3, '��������~@@~~~', '�в���', '���볻��!', SYSDATE + 30);
    

-- ������ ����
UPDATE board
SET title = '������ �����̾�~'
WHERE bno = 3;

UPDATE board
SET writer = '������'
    , content = '�޷ո޷ո޷� fix'
WHERE bno = 2;

-- WHERE�� ������ ��ü�� �����ȴ�.
UPDATE board
SET writer = '���۳�';


-- ������ ����
DELETE FROM board
WHERE bno = 1;


-- ��ü ������ ����
-- 1. WHERE���� ������ DELETE�� (�ѹ� ����, ����Ŀ�� ����, �α׳���� ����)
DELETE FROM board;

-- 2. TRUNCATE TABLE 
-- (�ѹ� �Ұ���, �ڵ�Ŀ��, �α׸� ���� �� ����, ���̺� ���� �ʱ���·� ����)
TRUNCATE TABLE board;

-- 3. DROP TABLE
-- (�ѹ� �Ұ���, �ڵ�Ŀ��, �α׸� ���� �� ����, ���̺� ������ ���� ������)
DROP TABLE board;

COMMIT;
ROLLBACK;

SELECT * FROM board;





