create table modal_check(
m_type varchar2(40),
m_pname varchar(70),
m_pexp varchar(100),
m_ppice number
);
--���Ĵٵ�Ŀ�������׸���
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','ö��-����ٴ�(���)','�Ž� �� ��ٴ� ����ö��',3);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','Ȯ��-���ڴ�(���Ҵ�)','�ܿ�/������ ���԰�',110);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','����-�輱����(���)','��Ż ���𵨸� ����� �ʼ� ����',4);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','����ġ/�ܼ�Ʈ��ü(����)','���׶���ǰ ����(�ΰǺ�����)',2);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','����-��ü','���ô� ���� �� ���� ��� �ȳ�',null);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','������','���� ��� �ȳ�',null);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','�湮��ü(����)','�⺻ �÷���(������/��ø ����)',25);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','�湮+��Ʋ��ü(����)','�÷�����,�귣��(������/��ø ����)',40);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','�߹�','�⺻�� �̿� �߰���� �߻�',100);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','����-����(��簡)','LX���� ����,�ΰǺ� ����',4);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','����-��ũ(��簡)','LX���� ����,�ΰǺ� ����',8);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','�ٴ�-����(��簡)','���Ĵٵ� ������(�������� ����)',11);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','�ٴ�-����(��簡)','LX����(3T)����',5);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','���-���Ĵٵ�(���Ҵ�)','�⼺����ǰ(����/�����̵���/�����ǰ/Ÿ�ϰ��� ����)',380);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','�ʸ�-�湮(����)','���� ��ü�� ���� ����',12);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','�ʸ�-����������',null,20);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','�ֹ氡��-���Ĵٵ�(���ʹ�)','��/�Ϻ���,�⺻��ũ��/����,�ĵ� ����(�ֹ� �� Ÿ�� ������)',95);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','���Ϸ���(���ʹ�)','�⺻ �����븮�� ���� ����',75);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','�Ź���/������(���ʹ�)','�Ź��� �Ϻ� ���� �߰� ��� �߻�',45);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','�ٹ�����(���ʹ�)','�⺻E0 PET��',35);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','ź����Ʈ(���Ҵ�)','���ڴ� ����/������ ���� ����Ʈ',35);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','Ÿ�ϰ���-���ڴ�(���Ҵ�)','�⺻ ����Ÿ��',50);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','Ÿ�ϰ���-�����ٴ�','�⺻ ����Ÿ��(�ΰǺ� ����)',45);
insert into modal_check values('���Ĵٵ� Ŀ���� ���׸���','����û��(��簡)','�⺻ ���� û��',1);


--�����̾�Ŀ�������׸���
insert into modal_check values('�����̾� Ŀ���� ���׸���','ö��-������ü(���)','Ÿ��,�ٹ�����,�ֹ氡��,����,����(������ ö�� ������)',7);
insert into modal_check values('�����̾� Ŀ���� ���׸���','ö��-����ٴ�(���)','�Ž� �� ��ٴ� ����ö��',3);
insert into modal_check values('�����̾� Ŀ���� ���׸���','Ȯ��-���ڴ�(���Ҵ�)','�ܿ�/������ ���԰�',110);
insert into modal_check values('�����̾� Ŀ���� ���׸���','����-�輱����(���)','��Ż ���𵨸� ����� �ʼ� ����',4);
insert into modal_check values('�����̾� Ŀ���� ���׸���','����ġ/�ܼ�Ʈ��ü(����)','���׶���ǰ ����(�ΰǺ�����)',2);
insert into modal_check values('�����̾� Ŀ���� ���׸���','����-��ü','���ô� ���� �� ���� ��� �ȳ�',null);
insert into modal_check values('�����̾� Ŀ���� ���׸���','����-õ����Ե� �ð�(���)','LED 2/3��ġ ����(�ΰǺ� ����)',3);
insert into modal_check values('�����̾� Ŀ���� ���׸���','������','���� ��� �ȳ�',null);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�湮��ü(����)','�귣��(������/��ø ����)',28);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�湮+��Ʋ��ü(����)','�÷�����,�귣��(������/��ø ����)',40);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�湮��ü(���絵��/����)','�귣��(������/��ø ����)',55);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�߹�-�����̾�','�귣�� �߹�',130);
insert into modal_check values('�����̾� Ŀ���� ���׸���','����-��ũ(��簡)','LX���� ����,�ΰǺ� ����',8);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�ٴ�-����(��簡)','�����̾� ������(�������� ����)',13);
insert into modal_check values('�����̾� Ŀ���� ���׸���','���-�����̾�(���Ҵ�)','�귣����ǰ(����/�����̵���/�����ǰ/Ÿ�ϰ��� ����)',480);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�ʸ�-�湮(����)','���� ��ü�� ���� ����',12);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�ʸ�-����������',null,20);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�ֹ氡��-���Ĵٵ�(���ʹ�)','��/�Ϻ���,�⺻��ũ��/����,�ĵ� ����(�ֹ� �� Ÿ�� ������)',95);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�ֹ氡��-�����̾�(���ʹ�)','��/�Ϻ���,�귣���ũ��/����,�ĵ� ����(�ֹ� �� Ÿ�� ������)',125);
insert into modal_check values('�����̾� Ŀ���� ���׸���','���Ϸ���(���ʹ�)','�⺻ �����븮�� ���� ����',75);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�Ź���/������(���ʹ�)','�Ź��� �Ϻ� ���� �߰� ��� �߻�',45);
insert into modal_check values('�����̾� Ŀ���� ���׸���','�ٹ�����(���ʹ�)','��������Ʈ PET��',65);
insert into modal_check values('�����̾� Ŀ���� ���׸���','ź����Ʈ(���Ҵ�)','���ڴ� ����/������ ���� ����Ʈ',35);
insert into modal_check values('�����̾� Ŀ���� ���׸���','Ÿ�ϰ���-���ڴ�(���Ҵ�)','�⺻ ����Ÿ��',50);
insert into modal_check values('�����̾� Ŀ���� ���׸���','Ÿ�ϰ���-�����ٴ�','�⺻ ����Ÿ��(�ΰǺ� ����)',45);
insert into modal_check values('�����̾� Ŀ���� ���׸���','����û��(��簡)','�⺻ ���� û��',1);

--�ֹ氡�� ���׸���
insert into modal_check values('�ֹ氡�� ���׸���','�����(���ʹ�)','EO(PET)��������Ʈ(����600),����ø,Ǫ�õ���',50);
insert into modal_check values('�ֹ氡�� ���׸���','�Ϻ���(���ʹ�)','EO(PET)��������Ʈ(����850),����ø,Ǫ�õ���',60);
insert into modal_check values('�ֹ氡�� ���׸���','�������(���ʹ�)','EO(PET)����',50);
insert into modal_check values('�ֹ氡�� ���׸���','���Ϸ���(���ʹ�)','EO(PET)����(����850)',65);
insert into modal_check values('�ֹ氡�� ���׸���','�����븮�� ����(���ʹ�)','��/�Ϻ��� ���� �Է�, LX ���̸���(12T/��90cm����)',35);
insert into modal_check values('�ֹ氡�� ���׸���','�븮�� ����(���ʹ�)','��/�Ϻ��� ���� �Է�(12T/��90cm����)',55);
insert into modal_check values('�ֹ氡�� ���׸���','��ũ����-�⺻','���� ���� FC-US 100',9);
insert into modal_check values('�ֹ氡�� ���׸���','��ũ����-�����̾�','��Ƽ�� ����',25);
insert into modal_check values('�ֹ氡�� ���׸���','��ũ��','������ũ�� 780',38);
insert into modal_check values('�ֹ氡�� ���׸���','��Ÿ�� ����(���ʹ�)','����Ÿ��(300/600�� ����/�ΰǺ�����)',25);
insert into modal_check values('�ֹ氡�� ���׸���','�ĵ�','���̵� ��Ʈ�� �ĵ�(�����ġ ����)',30);

--��� ��ǰ �ð�
insert into modal_check values('��� ��ǰ �ð�','���-��üö��','Ÿ������ ��ü ö��',75);
insert into modal_check values('��� ��ǰ �ð�','���-�Ϻ�ö��','����/����/����/õ�� ö��',55);
insert into modal_check values('��� ��ǰ �ð�','��ǹ��','�������/��üö�� ���ý� �ʼ�üũ',30);
insert into modal_check values('��� ��ǰ �ð�','���Ÿ��-����','Ÿ�ϼ��� �� �ð�(���ũ�� 1500*2300����)',80);
insert into modal_check values('��� ��ǰ �ð�','���Ÿ��-��ü�ð�','Ÿ�ϼ��� �� �ð�(���ũ�� 1500*2300����)',110);
insert into modal_check values('��� ��ǰ �ð�','�纯��','�Ƹ޸�ĭ���Ĵٵ� ���ǽ�(Ÿ ��ǰ ���� ����)',55);
insert into modal_check values('��� ��ǰ �ð�','�纯�����ü��','�Ƹ޸�ĭ���Ĵٵ� �÷�(Ÿ ��ǰ ���� ����)',110);
insert into modal_check values('��� ��ǰ �ð�','����� ����','�Ƹ޸�ĭ���Ĵٵ� ����(Ÿ ��ǰ ���� ����)',15);
insert into modal_check values('��� ��ǰ �ð�','������ ����','�Ƹ޸�ĭ���Ĵٵ� ����(Ÿ ��ǰ ���� ����)',25);
insert into modal_check values('��� ��ǰ �ð�','�����','�Ƹ޸�ĭ���Ĵٵ� ����(Ÿ ��ǰ ���� ����)',25);
insert into modal_check values('��� ��ǰ �ð�','��ǾǼ��縮','5ǰ��Ʈ(�񴩴�/�ʰ���/��,�Ŵ�/��������/���ǰ���)',20);
insert into modal_check values('��� ��ǰ �ð�','����','�⺻ �÷� ����(1500*700)',35);
insert into modal_check values('��� ��ǰ �ð�','�����ν�','�Ϲ� ���� �����ν�',50);
insert into modal_check values('��� ��ǰ �ð�','�ſｽ���̵���','���� ���� ��(500*1000 ����)',30);
insert into modal_check values('��� ��ǰ �ð�','���õ��','������/SMCŸ��(���ũ�� 1500*2300����)',40);

select * from modal_check;
delete from modal_check;
commit;
---------------------------------------------------------

create table modal_complete(
m_no number,
m_addr varchar(100),
m_tel varchar(60),
m_content varchar(300),
m_size varchar(20),
m_request varchar(200),
m_price number,
m_date date,
m_wanttime varchar(30),
m_wantdate varchar(50),
m_circs varchar(20),
m_place varchar(30)
);
CREATE SEQUENCE m_no_seq
START WITH 20000
INCREMENT BY 1;

select * from modal_complete;
delete from modal_complete;
drop sequence m_no_seq;

insert into modal_complete values(m_no_seq.nextval,'�ּ�','��ȭ��ȣ','��������','���','�߰���û����',500,sysdate,'13�� 30��','yyyy-mm-dd','����(5�� �̸�)','����Ʈ');

commit;

