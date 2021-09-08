--Tarea 2
--Fernanda Monter Ortiz
--
--Ejercicios
--1. Qué contactos de proveedores tienen la posición de sales representative?
select f.contact_name, f.contact_title 
from suppliers f 
where f.contact_title = 'Sales Representative';

select * from suppliers s 

--2.Qué contactos de proveedores no son marketing managers?
select f.contact_name, f.contact_title 
from suppliers f 
where f.contact_title != 'Marketing Manager';

select * from suppliers s 

--3. Cuales órdenes no vienen de clientes en Estados Unidos?
select f.customer_id, f.ship_country 
from orders f 
where f.ship_country != 'USA';

select * from orders o 

--4.Qué productos de los que transportamos son quesos?
select * from products f 
where f.product_name like '%Queso%';

select * from products p 

--5.Qué ordenes van a Bélgica o Francia?
select f.order_id, f.ship_country 
from orders f
where f.ship_country = 'France'or f.ship_country = 'Belgium' ;

select * from orders o 

--6.Qué órdenes van a LATAM?
select f.order_id, f.ship_country 
from orders f
where f.ship_country = 'Mexico'or f.ship_country = 'Venezuela' or f.ship_country = 'Brazil' or f.ship_country = 'Argentina';

select * from orders o 

--7.Qué órdenes no van a LATAM?
select f.order_id, f.ship_country 
from orders f
where f.ship_country != 'Mexico'or f.ship_country != 'Venezuela' or f.ship_country != 'Brazil' or f.ship_country != 'Argentina';

select * from orders o 

--8.Necesitamos los nombres completos de los empleados, nombres y apellidos unidos en un mismo registro
select f.employee_id, concat(f.first_name,' ',f.last_name) 
from employees f;

select * from employees e 

--9.Cuánta lana tenemos en inventario?
select sum(f.unit_price * f.units_in_stock)
from products f 

select * from products p 

--10.Cuantos clientes tenemos de cada país?
select f.country ,count (f.country)
from customers f
group by f.country 
having count(f.country)>1

select * from customers c 