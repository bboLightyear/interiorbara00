--delete shop_category;
--drop table shop_category purge;
--drop sequence seq_shop_category;

-- product_id�� ��ǰ�� ī�װ�(��������) �ҷ�����
-- category_id�� �ش��ϴ� ��ǰ ���� �ҷ�����


create table shop_category (
    category_id number,
    up_category_id number,
    name varchar2(100)
);

create sequence seq_shop_category;

select * from shop_category;

commit;

select
    c4.name || '>' || c3.name || '>' || c2.name || '>' || c1.name, p.name
from
    shop_product p
join
    shop_category c1
on
    p.category_id = c1.category_id
join
    shop_category c2
on
    c1.up_category_id = c2.category_id
join
    shop_category c3
on
    c2.up_category_id = c3.category_id
join
    shop_category c4
on
    c3.up_category_id = c4.category_id;
    
-- ���ϴ� ī�װ�
select
    rownum num1,
    nvl(s4.category_id, nvl(s3.category_id, s2.category_id)) category_id,
    NVL(S4.UP_CATEGORY_ID, NVL(S3.UP_CATEGORY_ID, S2.UP_CATEGORY_ID)) up_category_id,
    nvl(s4.name, nvl(s3.name, s2.name)) name
from
    shop_category s1
inner join
    shop_category s2
on
    s1.category_id = s2.up_category_id
left outer join
    shop_category s3
on
    s2.category_id = s3.up_category_id    
left outer join
    shop_category s4
on
    s3.category_id = s4.up_category_id
where
    s1.category_id = 10000
order by
    category_id;

-- ���� ����
select
    lpad(' ', 3 * (level - 1)) || name
from
    shop_category
start with
    up_category_id = -1
connect by
    prior category_id = up_category_id;

SELECT
    LEVEL, CATEGORY_ID, UP_CATEGORY_ID, NAME
FROM
    SHOP_CATEGORY
START WITH
    UP_CATEGORY_ID = -1
CONNECT BY
    PRIOR CATEGORY_ID = UP_CATEGORY_ID;
    
select
    category_id, up_category_id, name
from 
    shop_category
where
    up_category_id = 10000;
    
select
    category_id, up_category_id, name
from 
    shop_category
where
    up_category_id in (
    select
        category_id
    from 
        shop_category
    where
        up_category_id = 10000);
        
select
    *
from
    shop_product p
where
    p.category_id in (
    select
        s.category_id
    from
        shop_category s
    where
        s.up_category_id = 10101);
            
 select
    s.category_id
from
    shop_category s
where
    s.up_category_id = 10101;
        
select
    nvl(s4.category_id, nvl(s3.category_id, s2.category_id)) category_id,
    NVL(S4.UP_CATEGORY_ID, NVL(S3.UP_CATEGORY_ID, S2.UP_CATEGORY_ID)) UP_CATEGORY_ID,
    nvl(s4.name, nvl(s3.name, s2.name)) name
from
    shop_category s1
inner join
    shop_category s2
on
    s1.category_id = s2.up_category_id
left outer join
    shop_category s3
on
    s2.category_id = s3.up_category_id    
left outer join
    shop_category s4
on
    s3.category_id = s4.up_category_id
where
    s1.category_id = 10000
order by
    category_id;


select * from shop_category order by category_id;


insert into shop_category values (10000, -1, '����');

--------------------------------------------------------------------------------
insert into shop_category values (10100, 10000, 'ħ��');
insert into shop_category values (10101, 10100, 'ħ��������');
insert into shop_category values (10102, 10100, 'ħ��+��Ʈ����');
insert into shop_category values (10103, 10100, 'ħ��μӰ���');

insert into shop_category values (10104, 10101, '�Ϲ�ħ��');
insert into shop_category values (10105, 10101, '����ħ��');
insert into shop_category values (10106, 10101, '������ħ��');
insert into shop_category values (10107, 10101, '�йи�ħ��');
insert into shop_category values (10108, 10101, '��������Ŀħ��');
insert into shop_category values (10109, 10101, '�ϴܸ�Ʈ�������Ŀ�̼�');
insert into shop_category values (10110, 10101, '��Ǻ���');
insert into shop_category values (10111, 10101, '��ħ�롤��ħ��');
insert into shop_category values (10112, 10101, '���̽�ħ��');
insert into shop_category values (10113, 10102, '�Ϲ�ħ��');
insert into shop_category values (10114, 10102, '����ħ��');
insert into shop_category values (10115, 10102, '������ħ��');
insert into shop_category values (10116, 10102, '�йи�ħ��');
insert into shop_category values (10117, 10102, '��������Ŀħ��');
insert into shop_category values (10118, 10102, '����Ʈ����');
insert into shop_category values (10119, 10102, '��Ǻ���');

--------------------------------------------------------------------------------
insert into shop_category values (10200, 10000, '��Ʈ����������');
insert into shop_category values (10201, 10200, '��Ʈ����');
insert into shop_category values (10202, 10200, '����');
insert into shop_category values (10203, 10201, '��������Ʈ����');
insert into shop_category values (10204, 10201, '���ؽ���Ʈ����');
insert into shop_category values (10205, 10201, '����Ʈ����');

--------------------------------------------------------------------------------
insert into shop_category values (10300, 10000, '���̺���Ź��å��');

insert into shop_category values (10301, 10300, '�Žǡ��������̺�');
insert into shop_category values (10302, 10300, '���̵����̺�');
insert into shop_category values (10303, 10300, '��Ź');
insert into shop_category values (10304, 10300, 'å��');
insert into shop_category values (10305, 10300, '�½����̺�');

insert into shop_category values (10306, 10303, '��Ź���Խ����̺�');
insert into shop_category values (10307, 10303, 'Ȩ�١����Ϸ����Ź');
insert into shop_category values (10308, 10303, '��Ź+����');

insert into shop_category values (10309, 10304, '�Ϲ�å��');
insert into shop_category values (10310, 10304, '�½�å��');
insert into shop_category values (10311, 10304, '��ǡ����ĵ�å��');
insert into shop_category values (10312, 10304, '������å��');
insert into shop_category values (10313, 10304, '�п����繫��å��');

insert into shop_category values (10314, 10305, '���̽����̺�');
insert into shop_category values (10315, 10305, '�����̽����̺�');
insert into shop_category values (10316, 10305, '���ڻ�');

--------------------------------------------------------------------------------
insert into shop_category values (10400, 10000, '����');

insert into shop_category values (10401, 10400, '�Ϲݼ���');
insert into shop_category values (10402, 10400, '��Ŭ���̳�');
insert into shop_category values (10403, 10400, '���ĺ���');
insert into shop_category values (10404, 10400, '�½ļ���');
insert into shop_category values (10405, 10400, '���Ľ���');

--------------------------------------------------------------------------------
insert into shop_category values (10500, 10000, '������������');

insert into shop_category values (10501, 10500, '������');
insert into shop_category values (10502, 10500, '������');
insert into shop_category values (10503, 10500, 'ĳ���');
insert into shop_category values (10504, 10500, '�ֹ������');
insert into shop_category values (10505, 10500, '��Ź');

insert into shop_category values (10506, 10504, '������');
insert into shop_category values (10507, 10504, '�׸���');
insert into shop_category values (10508, 10504, '�����');
insert into shop_category values (10509, 10504, '�Ϻ���');
insert into shop_category values (10510, 10504, 'Űū��');
insert into shop_category values (10511, 10504, '�����+�Ϻ���');

--------------------------------------------------------------------------------
insert into shop_category values (10600, 10000, '�Ž��塤TV��');

insert into shop_category values (10601, 10600, '�ϹݰŽ���');
insert into shop_category values (10602, 10600, '�����Ž��塤���̵庸��');
insert into shop_category values (10603, 10600, 'TV���ĵ�');

--------------------------------------------------------------------------------
insert into shop_category values (10700, 10000, '����');

insert into shop_category values (10701, 10700, '������');
insert into shop_category values (10702, 10700, '���ĵ弱��');
insert into shop_category values (10703, 10700, '�ޱۡ������ļ���');

insert into shop_category values (10704, 10701, '�����ּ���');
insert into shop_category values (10705, 10701, '���ּ���');
insert into shop_category values (10706, 10701, '���ڼ���');

--------------------------------------------------------------------------------
insert into shop_category values (10800, 10000, '�����塤å��');

insert into shop_category values (10801, 10800, '�����塤�����');
insert into shop_category values (10802, 10800, 'å��');
insert into shop_category values (10803, 10800, '�Ű�����');

--------------------------------------------------------------------------------
insert into shop_category values (10900, 10000, '����');

insert into shop_category values (10901, 10900, '���׸�������');
insert into shop_category values (10902, 10900, '��������ġ');
insert into shop_category values (10903, 10900, '���');
insert into shop_category values (10904, 10900, '�ȶ�����');
insert into shop_category values (10905, 10900, '�������');
insert into shop_category values (10906, 10900, '�л����繫������');
insert into shop_category values (10907, 10900, '���̹�����');
insert into shop_category values (10908, 10900, '�½����ڡ��ڼ���������');
insert into shop_category values (10909, 10900, '��ü��');
insert into shop_category values (10910, 10900, '�߹�ħ');

--------------------------------------------------------------------------------
insert into shop_category values (11000, 10000, '��š�����');

insert into shop_category values (11001, 11000, '����');
insert into shop_category values (11002, 11000, '�ٹ�����');
insert into shop_category values (11003, 11000, '�巹����');
insert into shop_category values (11004, 11000, '���');

insert into shop_category values (11005, 11004, '��������ġ�����');
insert into shop_category values (11006, 11004, '�̵������');
insert into shop_category values (11007, 11004, '���ĵ����');
insert into shop_category values (11008, 11004, '���ĵ����ʰ���');

--------------------------------------------------------------------------------
insert into shop_category values (11100, 10000, '�ſ�');

insert into shop_category values (11101, 11100, '���Űſ�');
insert into shop_category values (11102, 11100, '���ſ�');
insert into shop_category values (11103, 11100, 'Ź��ſ�');

--------------------------------------------------------------------------------
insert into shop_category values (11200, 10000, 'ȭ��롤�ܼ�');

insert into shop_category values (11201, 11200, '�Ϲ�ȭ���');
insert into shop_category values (11202, 11200, '����ȭ���');
insert into shop_category values (11203, 11200, '�½ġ��̴�ȭ���');
insert into shop_category values (11204, 11200, '���̽�ȭ���');
insert into shop_category values (11205, 11200, '�ܼ�');
insert into shop_category values (11206, 11200, 'ȭ���+����');

--------------------------------------------------------------------------------
insert into shop_category values (11300, 10000, '�߿ܰ���');

insert into shop_category values (11301, 11300, '�߿����̺�');
insert into shop_category values (11302, 11300, '�߿����̺�+����');
insert into shop_category values (11303, 11300, '�߿�����');
insert into shop_category values (11304, 11300, 'â���Ķ�֡���Ÿ');

--------------------------------------------------------------------------------
insert into shop_category values (11400, 10000, '��������Ƽ��');

insert into shop_category values (11401, 11400, '���׸�����Ƽ��');
insert into shop_category values (11402, 11400, '�繫����Ƽ��');



--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
insert into shop_category values (20000, -1, '�к긯');

--------------------------------------------------------------------------------
insert into shop_category values (20100, 20000, 'Ŀư��������');

insert into shop_category values (20101, 20100, '�ϸ�Ŀư');
insert into shop_category values (20102, 20100, '�Ϲ�Ŀư');
insert into shop_category values (20103, 20100, '���̽�����Ŀư');
insert into shop_category values (20104, 20100, '������Ŀư');
insert into shop_category values (20105, 20100, '�ٶ������ֹ�Ŀư');
insert into shop_category values (20106, 20100, 'Ŀư������');
insert into shop_category values (20107, 20100, 'ĳ����');

--------------------------------------------------------------------------------
insert into shop_category values (20200, 20000, '���ס�ī��Ʈ');

insert into shop_category values (20201, 20200, '�ؼ��硤�ܸ𷯱�');
insert into shop_category values (20202, 20200, '�����߷路��');
insert into shop_category values (20203, 20200, '�̴ϡ�����Ʈ����');
insert into shop_category values (20204, 20200, '���ⷯ��');
insert into shop_category values (20205, 20200, '�顤�ڵ���̵巯��');
insert into shop_category values (20206, 20200, '�丣�þȷ���');
insert into shop_category values (20207, 20200, '���ס���𷯱�');
insert into shop_category values (20208, 20200, '��ź�����ʷ���');
insert into shop_category values (20209, 20200, '���񡤴��ڸ�');
insert into shop_category values (20210, 20200, '��Ÿ����');

--------------------------------------------------------------------------------
insert into shop_category values (20300, 20000, '�̺ҡ��̺Ҽ�');

insert into shop_category values (20301, 20300, '�̺�');
insert into shop_category values (20302, 20300, '�̺Ҽء�����');

insert into shop_category values (20303, 20301, '�����̺�');
insert into shop_category values (20304, 20301, '�̺�Ŀ��');
insert into shop_category values (20305, 20301, 'Ȭ�̺ҡ����̺�');
insert into shop_category values (20306, 20302, '�Ϲݼ�');
insert into shop_category values (20307, 20302, '�����������м�');

--------------------------------------------------------------------------------
insert into shop_category values (20400, 20000, '����������Ŀ��');

insert into shop_category values (20401, 20400, '����Ŀ��');
insert into shop_category values (20402, 20400, '������');
insert into shop_category values (20403, 20400, '���ؽ�����');
insert into shop_category values (20404, 20400, '������');
insert into shop_category values (20405, 20400, '�ڿ����纣��');
insert into shop_category values (20406, 20400, '�ٵ��ʷο졤�����');
insert into shop_category values (20407, 20400, '��ħ����ħ���𺣰�');

--------------------------------------------------------------------------------
insert into shop_category values (20500, 20000, '���ۡ��е�');

insert into shop_category values (20501, 20500, '�е塤��������');
insert into shop_category values (20502, 20500, '�䡤����');
insert into shop_category values (20503, 20500, '���Ʈ');

--------------------------------------------------------------------------------
insert into shop_category values (20600, 20000, '��Ʈ����Ŀ��');

--------------------------------------------------------------------------------
insert into shop_category values (20700, 20000, '����ε塤�ѽ�ũ��');

insert into shop_category values (20701, 20700, '����ε�');
insert into shop_category values (20702, 20700, '�ѽ�ũ��');
insert into shop_category values (20703, 20700, '��Ƽ��');
insert into shop_category values (20704, 20700, '����ũ��');

--------------------------------------------------------------------------------
insert into shop_category values (20800, 20000, '��Ʈ');

insert into shop_category values (20801, 20800, '�ֹ桤�ٿ뵵��Ʈ');
insert into shop_category values (20802, 20800, 'PVC��������Ʈ');
insert into shop_category values (20803, 20800, '���̡�������Ʈ');
insert into shop_category values (20804, 20800, '�������߸�Ʈ');
insert into shop_category values (20805, 20800, '��ũ�и�Ʈ');

--------------------------------------------------------------------------------
insert into shop_category values (20900, 20000, '��ǡ��漮');

insert into shop_category values (20901, 20900, '���');
insert into shop_category values (20902, 20900, '�漮����漮');
insert into shop_category values (20903, 20900, '��ǡ��漮��');

--------------------------------------------------------------------------------
insert into shop_category values (21000, 20000, '���ġ���ȰĿ��');

insert into shop_category values (21001, 21000, '����Ŀ��');
insert into shop_category values (21002, 21000, '�����е�');
insert into shop_category values (21003, 21000, '��ǳ��Ŀ��');
insert into shop_category values (21004, 21000, '��������������Ŀ��');
insert into shop_category values (21005, 21000, '����Ŀ��');
insert into shop_category values (21006, 21000, '��ŸĿ��');



--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
insert into shop_category values (30000, -1, '���ڡ��Ĺ�');

--------------------------------------------------------------------------------
insert into shop_category values (30100, 30000, '��ǻ����ĵ��');

insert into shop_category values (30101, 30100, '��ǻ��');
insert into shop_category values (30102, 30100, 'ĵ��');
insert into shop_category values (30103, 30100, 'ĵ��Ȧ��������');
insert into shop_category values (30104, 30100, '�μ�����Ȧ��');
insert into shop_category values (30105, 30100, 'Ȩ��Ǿ���罦');
insert into shop_category values (30106, 30100, '�Ʒθ����ϡ�����');
insert into shop_category values (30107, 30100, '���������');
insert into shop_category values (30108, 30100, '��Ÿ�׼�����');

insert into shop_category values (30109, 30101, '��ǻ��');
insert into shop_category values (30110, 30101, '���ʾס����彺ƽ');
insert into shop_category values (30111, 30102, '������ĵ��');
insert into shop_category values (30112, 30102, 'ĵ��');
insert into shop_category values (30113, 30102, 'Ƽ����Ʈ');
insert into shop_category values (30114, 30103, 'ĵ��Ȧ��');
insert into shop_category values (30115, 30103, 'ĵ�����');
insert into shop_category values (30116, 30104, '�μ������ȷλ���');
insert into shop_category values (30117, 30104, '�μ���Ȧ����Ʈ����');

--------------------------------------------------------------------------------
insert into shop_category values (30200, 30000, '�ö�����Ĺ�');

insert into shop_category values (30201, 30200, '�Ĺ�');
insert into shop_category values (30202, 30200, '��ȭ');
insert into shop_category values (30203, 30200, '��ȭ');
insert into shop_category values (30204, 30200, '������ö��');
insert into shop_category values (30205, 30200, '�ɴٹߡ��ö���ڽ�');
insert into shop_category values (30206, 30200, 'ȭ����ȭ��');
insert into shop_category values (30207, 30200, '������������');
insert into shop_category values (30208, 30200, '���ɡ�ȭ��������');
insert into shop_category values (30209, 30200, '����׿�ǰ');

insert into shop_category values (30210, 30201, '�������Ĺ�');
insert into shop_category values (30211, 30201, '�����Ĺ�');
insert into shop_category values (30212, 30201, '�ߴ����Ĺ�');
insert into shop_category values (30213, 30201, '�����Ĺ�');
insert into shop_category values (30214, 30201, '������');
insert into shop_category values (30215, 30201, '���׽Ĺ�');
insert into shop_category values (30216, 30201, '��������');
insert into shop_category values (30217, 30201, '����');
insert into shop_category values (30218, 30201, '���ѡ�����');
insert into shop_category values (30219, 30202, '��ȭ��');
insert into shop_category values (30220, 30202, '��ȭ����');
insert into shop_category values (30221, 30202, '��ȭ��ȭ����Ʈ');
insert into shop_category values (30222, 30202, '��ȭ�Ĺ�');
insert into shop_category values (30223, 30202, '��ȭ�����÷�Ʈ');
insert into shop_category values (30224, 30202, '��ȭ�ɹٱ���');
insert into shop_category values (30225, 30202, '��ȭ�ɴٹ�');
insert into shop_category values (30226, 30203, '��ȭ');
insert into shop_category values (30227, 30203, '�ɴٹ�');
insert into shop_category values (30228, 30205, '�ɴٹ�');
insert into shop_category values (30229, 30205, '�ɹٱ���');
insert into shop_category values (30230, 30205, '�ö���ڽ�');
insert into shop_category values (30231, 30206, 'ȭ��');
insert into shop_category values (30232, 30206, 'ȭ��');
insert into shop_category values (30233, 30206, 'ȭ�й�ħ��');
insert into shop_category values (30234, 30209, '��������');
insert into shop_category values (30235, 30209, '�롤��ᡤ�ڰ�');
insert into shop_category values (30236, 30209, '�Ĺ�����');
insert into shop_category values (30237, 30209, '�Ĺ������');

--------------------------------------------------------------------------------
insert into shop_category values (30300, 30000, 'Ȩ������');

insert into shop_category values (30301, 30300, '�к긯������');
insert into shop_category values (30302, 30300, '�׸�������');
insert into shop_category values (30303, 30300, '����');
insert into shop_category values (30304, 30300, '��ȭ �����');

insert into shop_category values (30305, 30301, '�Ϸ���Ʈ�������');
insert into shop_category values (30306, 30301, '��ȭ');
insert into shop_category values (30307, 30301, '�Ĺ�����');
insert into shop_category values (30308, 30301, 'ǳ�桤�ڿ�');
insert into shop_category values (30309, 30301, '����');
insert into shop_category values (30310, 30301, '���͸�');
insert into shop_category values (30311, 30301, '�ֹ�����');
insert into shop_category values (30312, 30302, '�Ϸ���Ʈ�������');
insert into shop_category values (30313, 30302, '�߻�ȭ');
insert into shop_category values (30314, 30302, '��ȭ');
insert into shop_category values (30315, 30302, 'ǳ�桤�ڿ�');
insert into shop_category values (30316, 30302, '�Ĺ�����');
insert into shop_category values (30317, 30302, '����');
insert into shop_category values (30318, 30302, '���͸�');
insert into shop_category values (30319, 30302, '�˾�Ʈ����Ƽ��');
insert into shop_category values (30320, 30302, '�ֹ�����');

--------------------------------------------------------------------------------
insert into shop_category values (30400, 30000, '���׸����ǰ');

insert into shop_category values (30401, 30400, 'Ʈ���̡�������');
insert into shop_category values (30402, 30400, '�����������');
insert into shop_category values (30403, 30400, '��ļ�ǰ');
insert into shop_category values (30404, 30400, '���׳ݡ����');
insert into shop_category values (30405, 30400, '���ͺ�');
insert into shop_category values (30406, 30400, '������');
insert into shop_category values (30407, 30400, '�������');
insert into shop_category values (30408, 30400, '�ǱԾ�����');
insert into shop_category values (30409, 30400, '��Ÿ��Ŀ�ǰ');
insert into shop_category values (30410, 30400, '���׸��� �м�');

--------------------------------------------------------------------------------
insert into shop_category values (30500, 30000, '�ð�');

insert into shop_category values (30501, 30500, '���ð�');
insert into shop_category values (30502, 30500, '�˶���Ź��ð�');
insert into shop_category values (30503, 30500, '��ǹ���ð�');
insert into shop_category values (30504, 30500, 'Ÿ�̸ӡ���ž��ġ');

--------------------------------------------------------------------------------
insert into shop_category values (30600, 30000, '�����ڡ����');

insert into shop_category values (30601, 30600, '���ڽ�ƼĿ');
insert into shop_category values (30602, 30600, '��ũ���');
insert into shop_category values (30603, 30600, '�帲����ĳ��');
insert into shop_category values (30604, 30600, '��Ÿ');

insert into shop_category values (30605, 30601, '���͸����޽���');
insert into shop_category values (30606, 30601, '�������ġ');
insert into shop_category values (30607, 30601, '��ü');
insert into shop_category values (30608, 30601, '�Ĺ�����');
insert into shop_category values (30609, 30601, '�繰������');
insert into shop_category values (30610, 30601, '����');
insert into shop_category values (30611, 30601, 'Ű���');

--------------------------------------------------------------------------------
insert into shop_category values (30700, 30000, '����ũ�������ι���');

insert into shop_category values (30701, 30700, '�����ι���');
insert into shop_category values (30702, 30700, '����ũ�׸���');
insert into shop_category values (30703, 30700, '��Ÿ�����ο�ǰ');

insert into shop_category values (30704, 30701, '�޷�');
insert into shop_category values (30705, 30701, '���̾���÷���');
insert into shop_category values (30706, 30701, '��Ʈ���޸���');
insert into shop_category values (30707, 30701, '����ŷ������');
insert into shop_category values (30708, 30701, '��ƼĿ');
insert into shop_category values (30709, 30701, 'ī�塤������');
insert into shop_category values (30710, 30701, '����ٹ�');
insert into shop_category values (30711, 30701, '�п�ǰ���̼�����');
insert into shop_category values (30712, 30701, '�������������');
insert into shop_category values (30713, 30702, 'Ÿ���ǡ�����');
insert into shop_category values (30714, 30702, '����͹�ħ��');
insert into shop_category values (30715, 30702, '����ũ��Ʈ�����콺�е�');
insert into shop_category values (30716, 30702, '����ũ����������');
insert into shop_category values (30717, 30702, '����;ϡ���ġ��');
insert into shop_category values (30718, 30703, '�Ŀ�ġ������');
insert into shop_category values (30719, 30703, '���ڹ�');
insert into shop_category values (30720, 30703, '��Ÿ�����ο�ǰ');



--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
insert into shop_category values (40000, -1, '����');

--------------------------------------------------------------------------------
insert into shop_category values (40100, 40000, 'õ���');

insert into shop_category values (40101, 40100, '��������');
insert into shop_category values (40102, 40100, '���Ʈ����');
insert into shop_category values (40103, 40100, '������');
insert into shop_category values (40104, 40100, '��������');
insert into shop_category values (40105, 40100, '���Ե�');
insert into shop_category values (40106, 40100, '���鸮��');
insert into shop_category values (40107, 40100, 'Ű������');
insert into shop_category values (40108, 40100, '�Ǹ���');

--------------------------------------------------------------------------------
insert into shop_category values (40200, 40000, '�彺�ĵ�');

--------------------------------------------------------------------------------
insert into shop_category values (40300, 40000, '�ܽ��ĵ�');

--------------------------------------------------------------------------------
insert into shop_category values (40400, 40000, '�����������');

insert into shop_category values (40401, 40400, '����������');
insert into shop_category values (40402, 40400, '������');
insert into shop_category values (40403, 40400, '�÷����׿�����');
insert into shop_category values (40404, 40400, '��������');
insert into shop_category values (40405, 40400, '���������');

--------------------------------------------------------------------------------
insert into shop_category values (40500, 40000, 'LED��');

insert into shop_category values (40501, 40500, 'LED�Žǵ�');
insert into shop_category values (40502, 40500, 'LED���');
insert into shop_category values (40503, 40500, 'LED�ֹ��');
insert into shop_category values (40504, 40500, 'LED��ǵ�');
insert into shop_category values (40505, 40500, 'LED�����������ٵ�');
insert into shop_category values (40506, 40500, '��������Ʈ');

--------------------------------------------------------------------------------
insert into shop_category values (40600, 40000, '����ũ���ĵ�');

--------------------------------------------------------------------------------
insert into shop_category values (40700, 40000, '������');

--------------------------------------------------------------------------------
insert into shop_category values (40800, 40000, '������');

insert into shop_category values (40801, 40800, '������������');
insert into shop_category values (40802, 40800, '������������');

--------------------------------------------------------------------------------
insert into shop_category values (40900, 40000, '���������μ�ǰ');

insert into shop_category values (40901, 40900, '������������');
insert into shop_category values (40902, 40900, '����ġ���ܼ�Ʈ���μ�ǰ');
insert into shop_category values (40903, 40900, '�ķ�ġ�����ϡ���Ÿ�μ�ǰ');


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
insert into shop_category values (50000, -1, '������DIY');

--------------------------------------------------------------------------------
insert into shop_category values (50100, 50000, '����');

insert into shop_category values (50101, 50100, '������Ʈ��������');
insert into shop_category values (50102, 50100, '��������');
insert into shop_category values (50103, 50100, '���硤��');
insert into shop_category values (50104, 50100, '��ø������');
insert into shop_category values (50105, 50100, '����̹�');
insert into shop_category values (50106, 50100, '��ġ�����г�');
insert into shop_category values (50107, 50100, '�顤����');
insert into shop_category values (50108, 50100, '��ٸ�');
insert into shop_category values (50109, 50100, 'īƮ');
insert into shop_category values (50110, 50100, '��Ÿ����');
insert into shop_category values (50111, 50102, '�����帱');
insert into shop_category values (50112, 50102, '������');
insert into shop_category values (50113, 50102, '��Ÿ��������');

--------------------------------------------------------------------------------
insert into shop_category values (50200, 50000, '����');

insert into shop_category values (50201, 50200, '��Ƽ�ǡ������ڵ�');
insert into shop_category values (50202, 50200, '�������������');
insert into shop_category values (50203, 50200, '����ġ���ܼ�Ʈ');

--------------------------------------------------------------------------------
insert into shop_category values (50300, 50000, '�����������͸�');

--------------------------------------------------------------------------------
insert into shop_category values (50400, 50000, '����');

insert into shop_category values (50401, 50400, '�纯��');
insert into shop_category values (50402, 50400, '�����');
insert into shop_category values (50403, 50400, '�ֹ����');
insert into shop_category values (50404, 50400, '��ǻ�������');
insert into shop_category values (50405, 50400, '������������');

--------------------------------------------------------------------------------
insert into shop_category values (50500, 50000, '��������Ʈ��');

insert into shop_category values (50501, 50500, '�����������ǰ');
insert into shop_category values (50502, 50500, '��Ʈ�����ʸ���');

--------------------------------------------------------------------------------
insert into shop_category values (50600, 50000, '�ٴ���');

insert into shop_category values (50601, 50600, '����Ÿ��');
insert into shop_category values (50602, 50600, '��ũ������Ÿ��');
insert into shop_category values (50603, 50600, 'Ÿ��ī��Ʈ');
insert into shop_category values (50604, 50600, '��ī��Ʈ');
insert into shop_category values (50605, 50600, '���ϸ�Ʈ');
insert into shop_category values (50606, 50600, '�ܵ��Ʈ');
insert into shop_category values (50607, 50600, '��Ÿ��Ʈ');
insert into shop_category values (50608, 50600, '����');

--------------------------------------------------------------------------------
insert into shop_category values (50700, 50000, 'Ÿ�ϡ��ĺ���');

--------------------------------------------------------------------------------
insert into shop_category values (50800, 50000, '����');

--------------------------------------------------------------------------------
insert into shop_category values (50900, 50000, '����Ʈ��������');

insert into shop_category values (50901, 51000, '����Ʈ');
insert into shop_category values (50902, 51000, '����Ʈ������');
insert into shop_category values (50903, 51000, '����Ʈ��ǰ');

--------------------------------------------------------------------------------
insert into shop_category values (51000, 50000, '�������ɷ�����');

--------------------------------------------------------------------------------
insert into shop_category values (51100, 50000, '�����μ�ǰ');

--------------------------------------------------------------------------------
insert into shop_category values (51200, 50000, '�����̡��湮������');

--------------------------------------------------------------------------------
insert into shop_category values (51300, 50000, '��������������ǰ');

--------------------------------------------------------------------------------
insert into shop_category values (51400, 50000, '�����������ǰ');

insert into shop_category values (51401, 51400, '��ݰ����������ǰ');
insert into shop_category values (51402, 51400, '�������塤����������');
insert into shop_category values (51403, 51400, '��ȭ�⡤�糭��ǰ');

commit;