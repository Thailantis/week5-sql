Insert into Customers(name, email, phone)
Values(
    ('Edelgard von Hresvelg', 'Blackeagles8@gmail.com', '917-405-0122'),
    ('Dimitri Alexandre Blaiddyd, Bluelions8@gmail.com', '917-608-7953'),
    ('Claude von Reigan', 'Goldendeer8@gmail.com', '917-808-4712')
);

Insert into Movies(title, release_date, genre, runtime, rating)
Values(
    ('Avengers: Endgame', '2019-04-26', 'Action', 181, 'PG-13'),
    ('La La Land', '2016-12-09', 'Musical', 128, 'PG-13'),
    ('Sneakerella', '2022-05-13', 'Musical', 112, 'PG-13')
);

Insert into Tickets(customer_id, movie_id, showtime, seat_number)
Values(
    (1, 1, '2019-04-26 19:00:00', 'A1')
    (2, 2, '2016-12-09 20:00:00', 'B5')
    (3, 3, '2022-05-13 21:00:00', 'C3')
);

Insert into Concessions(ticket_id, item_name, item_price)
Values(
    (1, 'Popcorn', 5.00),
    (2, 'Soda', 3.00),
    (3, 'Candy', 2.00),
);
