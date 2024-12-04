-- Step 1: Create the database "CBZhotels"
CREATE DATABASE CBZhotels;

-- Step 2: Use the newly created database
USE CBZhotels;

-- Step 3: Create the HOTEL table
CREATE TABLE HOTEL (
    hotel_id INT PRIMARY KEY,                      -- Hotel ID (Primary Key)
    hotel_name VARCHAR(30) NOT NULL,               -- Hotel Name
    hotel_address VARCHAR(50) NOT NULL             -- Hotel Address
);

-- Step 4: Insert data into the HOTEL table
INSERT INTO HOTEL (hotel_id, hotel_name, hotel_address) VALUES
(1, 'The Pope', 'Vatikangade 1, 1111 Bispeborg'),
(2, 'Lucky Star', 'Bredgade 12, 2222 Hjemby'),
(3, 'Discount', 'Billigvej 7, 3333 Lilleby'),
(4, 'deLuxe', 'Kapital Avenue 99, 4444 Borgerslev'),
(5, 'Discount', 'Billiggade 12, 6666 Roslev');

-- Step 5: Create the ROOM table
CREATE TABLE ROOM (
    room_id INT PRIMARY KEY,                      -- Room ID (Primary Key within the hotel)
    hotel_id INT,                                  -- Foreign Key to the HOTEL table
    room_type ENUM('D', 'F', 'S') NOT NULL,        -- Room Type ('D' for double, 'F' for family, 'S' for single)
    room_price DECIMAL(10, 2) NOT NULL,            -- Room Price per night
    FOREIGN KEY (hotel_id) REFERENCES HOTEL(hotel_id) -- Foreign Key relationship with HOTEL table
);

-- Step 6: Insert data into the ROOM table
INSERT INTO ROOM (room_id, hotel_id, room_type, room_price) VALUES
(1, 1, 'D', 200),
(2, 1, 'D', 200),
(11, 1, 'S', 150),
(21, 1, 'F', 220),
(1, 2, 'D', 230),
(2, 2, 'D', 230),
(11, 2, 'S', 180),
(21, 2, 'F', 300),
(1, 3, 'D', 175),
(2, 3, 'D', 170);
