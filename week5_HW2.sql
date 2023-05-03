Create TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name varchar(50) Not Null,
    email varchar(100) UNIQUE Not Null,
    phone varchar(20) 
);

Create TABLE Movies(
    movie_id SERIAL PRIMARY KEY,
    title varchar(100) Not Null,
    release_date DATE Not Null,
    genre varchar(50) Not Null,
    runtime int Not Null,
    rating varchar(10) Not Null
);

Create TABLE Tickets(
    ticket_id SERIAL PRIMARY KEY,
    customer_id int Not Null,
    movie_id int Not Null,
    showtime TIMESTAMP Not Null,
    seat_number varchar(10) Not Null,
    FOREIGN KEY(customer_id) References Customers(customer_id),
    FOREIGN KEY(movie_id) References Movies(movie_id)
);

Create TABLE Concessions(
    concession_id SERIAL PRIMARY KEY,
    ticket_id int Not Null,
    item_name varchar(50) Not Null,
    item_price decimal(5,2) Not Null,
    FOREIGN KEY(ticket_id) References Tickets(ticket_id)
);
