CREATE TABLE products(
	id varchar2(20) NOT null,
	name varchar2(20),
	unit varchar2(20),
	price varchar2(20)
);


INSERT INTO products (id, name, unit, price) values('bb','bbb','ccc','4000');

SELECT * FROM products;