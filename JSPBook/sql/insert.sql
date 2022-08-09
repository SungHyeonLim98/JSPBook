insert into product values
('P1234', 'iPhone 6s', 800000, '1334X750 ReninaHD display,
8-magapixel iSight Camera', 'Smart Phone', 'Apple', 1000,
'New', 'P1234.png');
insert into product values
('P1235', 'LG PC 그램', 1500000, '13.3-inch, IPS LED display, 
5rd Generatio Intel Core processors', 'Notebook', 'LG', 1000,
'Refurbished', 'P1235.png');
insert into product values
('P1236', 'Galaxy Tab S', 900000, '212.8*125.6*6.6mm, 
Super AMOLED display, Octa-Core processor', 
'Tablet', 'Samsung', 1000,
'Old', 'P1236.png');

delete from product where p_id = "P1236";
select * from product;
alter table product modify p_name varchar(20);