--------
BEGIN;
---------
------------------------------------SUPPLIER------------------------------------
---------

CREATE TABLE supplier (
	id serial PRIMARY KEY,
	firm varchar(255),
    addres varchar(100) NOT NULL UNIQUE
	phone varchar(20)
	email varchar(100) NOT NULL UNIQUE
);

INSERT INTO supplier (firm, addres, phone, email)
            VALUES
            (DEFAULT, 'Reichel, Kozey and Barrows', '1-500-108-6242 x5245', 'Dante.Prohaska50@yahoo.com'),
            (DEFAULT, 'Kunde and Sons', '139-924-9420', 'Brock.Thiel@hotmail.com'),
            (DEFAULT, 'MacGyver, Cassin and Renner', '1-840-574-3276 x0286', 'Chaya39@gmail.com'),
            (DEFAULT, 'Russel Group', '(201) 135-9999 x801', 'Adolph56@gmail.com'),
            (DEFAULT, 'Bogisich LLC', '726-352-9784', 'Abbigail91@hotmail.com'),
            (DEFAULT, 'Dare Group', '(046) 945-9512 x4307', 'Arianna_Cruickshank66@gmail.com'),
            (DEFAULT, 'Hand - Wilkinson', '880.067.0282 x14574', 'Eloy_DuBuque20@gmail.com'),
            (DEFAULT, 'Romaguera, Champlin and Hilll', '103-490-2394', 'Berry17@hotmail.com'),
            (DEFAULT, 'Koss LLC', '925-871-0715 x565', 'Clifford83@gmail.com'),
            (DEFAULT, 'Nitzsche - Nienow', '903-137-9853', 'Birdie.Stokes@gmail.com');



---------
------------------------------------MARKET-----------------------
---------

CREATE TABLE market (
	id serial PRIMARY KEY,
	name varchar(255),
	town varchar(100),-- DEFAULT 'Москва',
	street varchar(100),
	house varchar(20),
    open_date varchar(100),
	close_date varchar(100),
);

INSERT INTO market (id, name, town, street, house, open_date, close_date)
            VALUES
            (DEFAULT, 'John', 'Cartwrightfurt', 'Guiseppe Hollow', 52, '2013-07-14T06:11:40.386Z', '2016-10-17T02:19:53.922Z'),
            (DEFAULT, 'Deven', 'Lake Collin', 'Gleason Forge', 75, '2010-08-09T12:22:10.578Z', '2014-06-11T10:43:58.681Z'),
            (DEFAULT, 'Amari', 'Elisabethside', 'Dino Streets', 70, '2016-01-31T14:56:27.815Z', '2011-09-08T09:12:16.036Z'),
            (DEFAULT, 'Tyrique', 'West Dejonland', 'Waters Course', 71, '2019-11-20T08:29:51.504Z', '2015-12-18T19:57:03.342Z'),
            (DEFAULT, 'Rosario', 'North Tremainebury', 'Ullrich Lights', 68, '2013-05-03T02:41:56.718Z', '2015-07-15T16:37:33.384Z'),
            (DEFAULT, 'Janelle', 'Bodemouth', 'Malvina Course', 25, '2014-09-17T04:00:20.795Z', '2012-04-09T09:43:25.397Z'),
            (DEFAULT, 'Juston', 'Rosenbaumport', 'Borer Landing', 5, '2014-07-25T09:06:04.615Z', '2013-10-19T03:00:13.551Z'),
            (DEFAULT, 'Benton', 'Jeffryshire', 'Boyle Tunnel', 12, '2015-12-23T07:55:14.661Z', '2020-01-15T15:51:51.108Z'),
            (DEFAULT, 'Pauline', 'South Shanelberg', 'Keanu Lodge', 94, '2017-02-25T03:47:01.907Z', '2014-05-21T02:51:34.822Z'),
            (DEFAULT, 'Rex', 'Cedrickfort', 'Keara Meadow', 36, '2017-03-18T04:52:14.324Z', '2015-05-11T02:11:41.576Z');


---------
------------------------------------PRODUCT------------------------------------
---------

CREATE TABLE product (
	id serial PRIMARY KEY,
	name varchar(255),
	quality varchar(255),
	count_in_storage varchar(500),
	description varchar(200)
);

INSERT INTO product (name, quality, count_in_storage, description)
             VALUES
            (DEFAULT, 'Awesome Fresh Cheese', 'Sleek', 152, 'Towels'),
            (DEFAULT, 'Tasty Wooden Bacon', 'Unbranded', 71, 'Chips'),
            (DEFAULT, 'Intelligent Soft Tuna', 'Sleek', 256, 'Sausages'),
            (DEFAULT, 'Gorgeous Plastic Towels', 'Fantastic', 440, 'Bike'),
            (DEFAULT, 'Fantastic Frozen Pizza', 'Intelligent', 479, 'Gloves'),
            (DEFAULT, 'Ergonomic Fresh Chips', 'Incredible', 39, 'Table'),
            (DEFAULT, 'Sleek Rubber Car', 'Fantastic', 469, 'Shoes'),
            (DEFAULT, 'Refined Concrete Fish', 'Small', 482, 'Computer'),
            (DEFAULT, 'Handcrafted Fresh Shoes', 'Handmade', 240, 'Chair'),
            (DEFAULT, 'Tasty Granite Chicken', 'Practical', 368, 'Table');

---------
------------------------------------YELLOW_PRICE------------------------------------
---------

CREATE TABLE yellow_price (
	id serial PRIMARY KEY,
	individual varchar(255),
	_public varchar(255),
	sum_price varchar(255),
);

INSERT INTO yellow_price (individual, _public, sum_price)
            VALUES
            (DEFAULT, '594.00', '495.00', '964.00'),
            (DEFAULT, '640.00', '576.00', '938.00'),
            (DEFAULT, '935.00', '388.00', '456.00'),
            (DEFAULT, '329.00', '921.00', '456.00'),
            (DEFAULT, '519.00', '299.00', '476.00'),
            (DEFAULT, '588.00', '460.00', '569.00'),
            (DEFAULT, '547.00', '364.00', '699.00'),
            (DEFAULT, '843.00', '373.00', '702.00'),
            (DEFAULT, '741.00', '324.00', '866.00'),
            (DEFAULT, '792.00', '469.00', '820.00');

---------
------------------------------------PRICE------------------------------------
---------

CREATE TABLE price (
	id serial PRIMARY KEY,
    price_before varchar(255),
	price_after varchar(255),
);

INSERT INTO price (price_before, price_after)
             VALUES
(DEFAULT, '441.00', '256.00'),
(DEFAULT, '426.00', '789.00'),
(DEFAULT, '412.00', '874.00'),
(DEFAULT, '472.00', '98.00'),
(DEFAULT, '460.00', '234.00'),
(DEFAULT, '423.00', '457.00'),
(DEFAULT, '937.00', '853.00'),
(DEFAULT, '691.00', '434.00'),
(DEFAULT, '422.00', '823.00'),
(DEFAULT, '444.00', '207.00');

---------
------------------------------------DISCOUNT_CARD------------------------------------
---------

CREATE TABLE discount_card (
	id serial PRIMARY KEY,
	card_number varchar(255)
    );

INSERT INTO discount_card (card_number)
            VALUES
            (DEFAULT, 230273),
            (DEFAULT, 48682),
            (DEFAULT, 364695),
            (DEFAULT, 490625),
            (DEFAULT, 643349),
            (DEFAULT, 567670),
            (DEFAULT, 478654),
            (DEFAULT, 453971),
            (DEFAULT, 933566),
            (DEFAULT, 583256);

---------
------------------------------------COSTUMER------------------------------------
---------

CREATE TABLE costumer (
	id serial PRIMARY KEY,
	name varchar(255),
	surname varchar(255),
	email varchar(255),
	phone varchar(255)
);

INSERT INTO costumer (name, surname, email, phone)
             VALUES
    (DEFAULT, 'Koss - Jacobson', 'Hoppeshire', 'River.Block@yahoo.com', '(888) 008-5245 x349'),
    (DEFAULT, 'Mills - Kuphal', 'West Niko', 'Bria_Schmeler@yahoo.com', '(558) 736-1244'),
    (DEFAULT, 'Hansen - Reichel', 'Lake Mozelleberg', 'Veda43@hotmail.com', '795-043-5876 x590'),
    (DEFAULT, 'Krajcik, Nolan and Bayer', 'North Dorachester', 'Oren_Brown@hotmail.com', '1-502-140-2010 x603'),
    (DEFAULT, 'Bednar, Hamill and Adams', 'North Ervin', 'Cordelia.Morar@yahoo.com', '(374) 495-8026 x66459'),
    (DEFAULT, 'Steuber Inc', 'South Presley', 'Charley20@hotmail.com', '(300) 752-4872'),
    (DEFAULT, 'Hermann LLC', 'Maceystad', 'Jacky57@yahoo.com', '1-923-874-2727 x747'),
    (DEFAULT, 'Kuhic - Kutch', 'North Kiantown', 'Carlee_Greenfelder@gmail.com', '(207) 681-4587'),
    (DEFAULT, 'Reynolds, Crist and Schmeler', 'VonRuedenberg', 'Hildegard_Stehr13@hotmail.com', '(621) 326-1321'),
    (DEFAULT, 'Paucek Inc', 'McKenzieborough', 'Desmond96@hotmail.com', '348-683-1369');

---------
------------------------------------SPECIAL_DISCOUNT------------------------------------
---------

CREATE TABLE special_discount (
	id serial PRIMARY KEY,
	name varchar(255),
    description varchar(255)
);

INSERT INTO special_discount (name, desctiplion)
             VALUES
(DEFAULT, 'emulation Interactions', 'out-of-the-box Executive'),
(DEFAULT, 'capacitor', 'Refined navigating'),
(DEFAULT, 'initiatives Unbranded', 'Handmade GB Solutions'),
(DEFAULT, 'Manager', 'Lebanese Pound archive'),
(DEFAULT, 'neural', 'Orchestrator implement Euro'),
(DEFAULT, 'Generic monetize', 'Guinea-Bissau'),
(DEFAULT, '4th generation Metal', 'programming copy'),
(DEFAULT, 'Music', 'Automotive static Granite'),
(DEFAULT, 'Wooden California', 'Officer Yuan Renminbi'),
(DEFAULT, 'Buckinghamshire Home Program', 'Senior SCSI connecting');

---------
------------------------------------BUY------------------------------------
---------

CREATE TABLE buy (
	id serial PRIMARY KEY,
	create_data varchar(255),
	create_time varchar(255),
);

INSERT INTO buy (create_data, desctiplion)
             VALUES
(DEFAULT, '2012-10-26', '14:24:25'),
(DEFAULT, '2012-06-30', '06:52:14'),
(DEFAULT, '2017-11-19', '06:57:52'),
(DEFAULT, '2012-07-19', '17:30:55'),
(DEFAULT, '2016-10-12', '05:48:55'),
(DEFAULT, '2012-05-29', '16:03:22'),
(DEFAULT, '2013-01-02', '22:45:35'),
(DEFAULT, '2013-06-01', '21:05:38'),
(DEFAULT, '2011-06-27', '00:18:22'),
(DEFAULT, '2010-08-29', '07:05:23');

---------
------------------------------------SUPLY_PRODUCT------------------------------------
---------

CREATE TABLE suply_product (
	id serial PRIMARY KEY,
	count_product varchar(255),
	price_product varchar(255)
);

INSERT INTO suply_product (count_product, price_product)
             VALUES
(DEFAULT,  439, '588.00'),
(DEFAULT,  435, '343.00'),
(DEFAULT,  145, '899.00'),
(DEFAULT,  132, '810.00'),
(DEFAULT,  237, '299.00'),
(DEFAULT,  229, '37.00'),
(DEFAULT,  286, '208.00'),
(DEFAULT,  110, '901.00'),
(DEFAULT,  401, '276.00'),
(DEFAULT,  353, '896.00');

---------
------------------------------------STAFF------------------------------------
---------

CREATE TABLE staff (
	id serial PRIMARY KEY,
	name varchar(255),
	surname varchar(255),
	contacts varchar(255),
	birth varchar(255),
    residence_permit varchar(255),
    timetable varchar(255)
);

INSERT INTO staff (name, surname, email, phone)
             VALUES
(DEFAULT, 'Keyshawn', 'Mueller', '(512) 874-6656', '2019-06-15', '801 Nicolas Glens', 'Friday'),
(DEFAULT, 'Christophe', 'Morissette', '133-799-7998 x35986', '2020-05-04', '5206 Ernesto Forest', 'Thursday'),
(DEFAULT, 'Ally', 'Kuvalis', '1-661-348-1575 x87931', '2020-04-03', '48397 Araceli Port', 'Wednesday'),
(DEFAULT, 'Domenica', 'Jakubowski', '1-250-760-7178 x71763', '2019-07-20', '837 Darron Islands', 'Sunday'),
(DEFAULT, 'Katelin', 'Labadie', '(720) 569-4161 x942', '2020-03-02', '3095 Hester Key', 'Sunday'),
(DEFAULT, 'Antonina', 'Ferry', '1-479-559-7414 x6798', '2019-08-13', '378 Durgan Path', 'Friday'),
(DEFAULT, 'Rosalinda', 'Ankunding', '1-288-204-3984', '2020-05-18', '9059 Gust Trail', 'Saturday'),
(DEFAULT, 'Grayson', 'Hoppe', '904.094.3165', '2019-11-20', '48592 Raynor Shores', 'Monday'),
(DEFAULT, 'Derek', 'Lesch', '(395) 453-1493 x3930', '2019-12-14', '713 Johnston Junction', 'Wednesday'),
(DEFAULT, 'Forrest', 'Farrell', '1-418-951-7537', '2019-12-29', '52739 McGlynn Views', 'Friday');

---------
------------------------------------DIVISION------------------------------------
---------

CREATE TABLE division (
	id serial PRIMARY KEY,
	name varchar(255),
	description varchar(255),
	start_date varchar(255)
);

---------
------------------------------------DEPARTMENT------------------------------------
---------

CREATE TABLE department (
	id serial PRIMARY KEY,
	name varchar(255)
);





---------
COMMIT;