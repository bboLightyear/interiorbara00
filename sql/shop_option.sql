--delete shop_option_set;
--delete shop_option;
--delete shop_product_data;
--drop table shop_option_set purge;
--drop table shop_option purge;
--drop table shop_product_data purge;
--drop sequence seq_shop_option_set;
--drop sequence seq_shop_option;
--drop sequence seq_shop_product_data;

create table shop_option_set (
    option_set_id number,
    name varchar2(100)
);

create table shop_option (
    option_id number,
    option_set_id number,
    sub_option_set_id number,
    product_data_id number,
    name varchar2(100)
);

create table shop_product_data (
    product_data_id number,
    stock number,
    price number,
    discounted_price number
);

create sequence seq_shop_option_set;
create sequence seq_shop_option;
create sequence seq_shop_product_data;

select * from shop_option_set;
select * from shop_option;
select * from shop_product_data;

commit;

select
    *
from
    shop_product_data
where
    product_data_id = (
    select
        min(product_data_id)
    from
        shop_option
    where
        option_set_id = (
        select
            min(option_set_id)
        from
            shop_option_set
        where
            option_set_id in (
            select
                sub_option_set_id
            from
                shop_option
            where
                option_set_id = (
                select
                    option_set_id
                from
                    shop_option_set
                where
                    option_set_id = (
                    select
                        option_set_id
                    from
                        shop_product
                    where
                        product_id = 2)))));


select
    *
from
    shop_option
where
    option_set_id = (
    select
        min(option_set_id)
    from
        shop_option_set
    where
        option_set_id in (
        select
            sub_option_set_id
        from
            shop_option
        where
            option_set_id = (
            select
                option_set_id
            from
                shop_option_set
            where
                option_set_id = (
                select
                    option_set_id
                from
                    shop_product
                where
                    product_id = 2))));

select
    *
from
    shop_option_set
where
    option_set_id in (
    select
        sub_option_set_id
    from
        shop_option
    where
        option_set_id = (
        select
            option_set_id
        from
            shop_option_set
        where
            option_set_id = (
            select
                option_set_id
            from
                shop_product
            where
                product_id = 2)));

select
    *
from
    shop_option
where
    option_set_id = (
    select
        option_set_id
    from
        shop_option_set
    where
        option_set_id = (
        select
            option_set_id
        from
            shop_product
        where
            product_id = 2));


select
    *
from
    shop_option_set
where
    option_set_id = (
    select
        option_set_id
    from
        shop_product
    where
        product_id = 2);
        
select
    *
from
    shop_product
    order by product_id;
--where
--    product_id = 2;


commit;

insert into shop_option_set values (1, '������');
insert into shop_option_set values (2, '����');
insert into shop_option_set values (3, '����');
insert into shop_option_set values (4, '����');
insert into shop_option_set values (5, '����');

insert into shop_product_data values (1, 10, 20000, 10000);
insert into shop_product_data values (2, 10, 20000, 10000);
insert into shop_product_data values (3, 10, 30000, 15000);
insert into shop_product_data values (4, 10, 30000, 15000);
insert into shop_product_data values (5, 10, 40000, 20000);
insert into shop_product_data values (6, 10, 40000, 20000);

insert into shop_product_data values (7, 100, 3000, null);
insert into shop_product_data values (8, 100, 4000, null);
insert into shop_product_data values (9, 100, 5000, null);

insert into shop_option values (1, 1, 2, null, '��');
insert into shop_option values (2, 1, 3, null, '��');
insert into shop_option values (3, 1, 4, null, '��');

insert into shop_option values (4, 2, null, 1, '����');
insert into shop_option values (5, 2, null, 2, '�Ͼ�');
insert into shop_option values (6, 3, null, 3, '����');
insert into shop_option values (7, 3, null, 4, '�Ͼ�');
insert into shop_option values (8, 4, null, 5, '����');
insert into shop_option values (9, 4, null, 6, '�Ͼ�');

insert into shop_option values (10, 5, null, 7, '30cm');
insert into shop_option values (11, 5, null, 8, '40cm');
insert into shop_option values (12, 5, null, 9, '50cm');

commit;

--insert into shop_product_data values (seq_shop_product_data.nextval, 10, 499000, 169000);
--insert into shop_product_data values (seq_shop_product_data.nextval, 10, 619000, 209000);
--insert into shop_product_data values (seq_shop_product_data.nextval, 10, 589000, 199000);
--insert into shop_product_data values (seq_shop_product_data.nextval, 10, 739000, 249000);

--insert into shop_option_set values (seq_shop_option_set.nextval, '������');
--insert into shop_option_set values (seq_shop_option_set.nextval, '����');
--insert into shop_option_set values (seq_shop_option_set.nextval, '����');

--insert into shop_option values (seq_shop_option.nextval, 1, 2, null, '���۽̱�(SS)');
--insert into shop_option values (seq_shop_option.nextval, 1, 3, null, '��(Q)');
--insert into shop_option values (seq_shop_option.nextval, 2, null, 1, '���߷�(UL01005)');
--insert into shop_option values (seq_shop_option.nextval, 2, null, 2, '����(UL01007)');
--insert into shop_option values (seq_shop_option.nextval, 3, null, 3, '���߷�(UL01006)');
--insert into shop_option values (seq_shop_option.nextval, 3, null, 4, '����(UL01008)');



