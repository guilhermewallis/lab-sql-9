	-- 1.
create table rentals_may (
	rental_id int UNIQUE NOT NULL,
    rental_date varchar(255),
    inventory_id int,
    customer_id int,
    return_date varchar(255),
    staff_id int,
    last_update varchar(255),
    constraint primary key (rental_id)
);

	-- 2.
insert into rentals_may (rental_id, rental_date, inventory_id, customer_id, return_date,
staff_id, last_update)
select rental_id, rental_date, inventory_id, customer_id, return_date,
staff_id, last_update from rental
where substring(rental_date, 6, 2) = '05';

	-- 3.
create table rentals_june (
	rental_id int UNIQUE NOT NULL,
    rental_date varchar(255),
    inventory_id int,
    customer_id int,
    return_date varchar(255),
    staff_id int,
    last_update varchar(255),
    constraint primary key (rental_id)
);

	-- 4.
insert into rentals_june (rental_id, rental_date, inventory_id, customer_id, return_date,
staff_id, last_update)
select rental_id, rental_date, inventory_id, customer_id, return_date,
staff_id, last_update from rental
where substring(rental_date, 6, 2) = '06';

	-- 5.
select customer_id, count(*) num_of_rentals from rentals_may
group by customer_id;

	-- 6.
select customer_id, count(*) num_of_rentals from rentals_june
group by customer_id;