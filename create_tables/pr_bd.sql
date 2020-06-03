--------
BEGIN transaction;
---------
------------------------------------SUPPLIER------------------------------------
---------

CREATE TABLE supplier (
	id serial PRIMARY KEY,
	firm varchar(255),
    addres varchar(100) NOT NULL UNIQUE,
	phone varchar (200),
	email varchar (100) NOT NULL UNIQUE
);



INSERT INTO supplier (id, firm, addres, phone, email)
                    VALUES
(DEFAULT, 'Erdman LLC', 'East Fredericfurt','481-303-7788', 'Anne.Predovic@gmail.com'),
(DEFAULT, 'Gerlach, Collier and Walker', 'North Rashad','266-432-6248', 'Morris22@hotmail.com'),
(DEFAULT, 'Littel - Dicki', 'South Justine','955.560.3336', 'Giuseppe.VonRueden83@yahoo.com'),
(DEFAULT, 'Hegmann - Smitham', 'North Dawnshire','1-107-623-6121 x98710', 'Carroll79@yahoo.com'),
(DEFAULT, 'Jacobson - Watsica', 'Port Travisfort','791-293-0097 x7889', 'Elisabeth41@hotmail.com'),
(DEFAULT, 'Von LLC', 'West Triston','1-011-437-4292 x1717', 'Christa_Legros@hotmail.com'),
(DEFAULT, 'Murphy, Kutch and Bernhard', 'East Kian','(195) 935-4470', 'Martina.Osinski31@hotmail.com'),
(DEFAULT, 'Sauer, Torp and Krajcik', 'Stoltenbergside','158-317-5547 x31706', 'Jakayla12@gmail.com'),
(DEFAULT, 'Vandervort, Wehner and Gorczany', 'Steuberberg','433.450.4470', 'Bertrand_Gerlach41@hotmail.com'),
(DEFAULT, 'Powlowski, Nolan and Walsh', 'Elbertburgh','(390) 044-7798 x762', 'Cornell_Blick79@hotmail.com');


---------
------------------------------------shop-----------------------
---------

CREATE TABLE shop (
	id serial PRIMARY KEY,
	name varchar(255),
	town varchar(100),
	street varchar(100),
	house varchar(20),
    open_date varchar(100),
	close_date varchar(100)
);

INSERT INTO shop (id, name, town, street, house, open_date, close_date)
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
------------------------------------YELLOW_PRICE------------------------------------
---------

CREATE TABLE yellow_price (
	id serial PRIMARY KEY,
	individual varchar(255),
	_public varchar(255),
	sum_price varchar(255)
);

INSERT INTO yellow_price (id, individual, _public, sum_price)
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
	price_after varchar(255)
);

INSERT INTO price (id, price_before, price_after)
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

INSERT INTO discount_card (id, card_number)
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


INSERT INTO costumer (id, name, surname, email, phone)
             VALUES
(DEFAULT, 'Mariane', 'Skiles', 'Milford.Ruecker43@yahoo.com', '(789) 274-7819 x42990'),
(DEFAULT, 'Kole', 'Friesen', 'Vidal.Kub@hotmail.com', '(058) 159-7873'),
(DEFAULT, 'Gisselle', 'Metz', 'Esta.Glover94@yahoo.com', '1-188-366-7538 x5635'),
(DEFAULT, 'Jordi', 'Ryan', 'Roberta92@yahoo.com', '683.122.4981'),
(DEFAULT, 'Blake', 'Beatty', 'Emery.Smith@yahoo.com', '310-224-6471'),
(DEFAULT, 'Laurianne', 'Dietrich', 'Toy.Osinski37@hotmail.com', '(684) 392-4854'),
(DEFAULT, 'Hettie', 'Bode', 'Alden28@gmail.com', '(151) 832-5564'),
(DEFAULT, 'Archibald', 'Corkery', 'Alia_Sanford@hotmail.com', '539-801-8724 x3635'),
(DEFAULT, 'Emmet', 'Torphy', 'Bryon.Rutherford55@gmail.com', '1-130-084-2641 x1193'),
(DEFAULT, 'Isac', 'Frami', 'Mortimer13@gmail.com', '(504) 956-1791 x6986');

---------
------------------------------------SPECIAL_DISCOUNT------------------------------------
---------

CREATE TABLE special_discount (
	id serial PRIMARY KEY,
	name varchar(255),
    description varchar(255)
);

INSERT INTO special_discount (id, name, description)
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
------------------------------------PRODUCT------------------------------------
---------

CREATE TABLE product (
	id serial PRIMARY KEY,
	name varchar(255),
	quality varchar(255),
	count_in_storage varchar(500),
	special_discount_id integer REFERENCES special_discount,
	description varchar(200)
);

INSERT INTO product (id, name, quality, count_in_storage, description)
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
------------------------------------BUY------------------------------------
---------

CREATE TABLE buy (
	id serial PRIMARY KEY,
	create_data TIMESTAMP,
    summ NUMERIC,
	 shop_id integer REFERENCES shop
);

INSERT INTO buy (id, create_data, summ)
             VALUES
             
(DEFAULT, '2019-09-01T09:14:48.495Z', '12000'),
(DEFAULT, '2016-09-11T08:38:10.675Z', '8000'),
(DEFAULT, '2017-04-08T13:05:09.482Z', '450'),
(DEFAULT, '2012-09-22T01:19:27.506Z', '20000'),
(DEFAULT, '2010-08-24T07:34:52.025Z', '900'),
(DEFAULT, '2011-10-23T22:29:52.382Z', '500'),
(DEFAULT, '2013-06-09T20:23:51.347Z', '1200'),
(DEFAULT, '2012-02-29T11:10:29.787Z', '850'),
(DEFAULT, '2020-01-20T05:29:01.104Z', '14000'),
(DEFAULT, '2019-03-05T10:22:01.702Z', '4000'); 
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

INSERT INTO staff (id, name, surname, contacts, birth, residence_permit, timetable)
             VALUES
(DEFAULT, 'Fern', 'Mante', '859-062-4566 x05838', '2020-05-06T04:04:21.930Z', '3939 Dock Road', 'Thursday'),
(DEFAULT, 'Orval', 'Crooks', '069.615.7812 x80021', '2019-12-10T12:34:55.065Z', '5624 Hermiston Roads', 'Sunday'),
(DEFAULT, 'Margie', 'Ullrich', '695.090.6023 x340', '2020-02-04T13:37:51.049Z', '3842 Abernathy Pass', 'Saturday'),
(DEFAULT, 'Aidan', 'Halvorson', '1-785-630-2643', '2019-07-26T08:55:46.997Z', '50886 Schroeder Plaza', 'Tuesday'),
(DEFAULT, 'Judd', 'Gusikowski', '521.234.2834', '2020-04-08T23:53:08.766Z', '73734 Sigurd Pines', 'Tuesday'),
(DEFAULT, 'Ezequiel', 'Kuhlman', '474.965.3487 x5163', '2019-09-17T14:13:30.692Z', '2281 Hudson Fall', 'Wednesday'),
(DEFAULT, 'Lula', 'Zemlak', '340.821.3072 x6355', '2019-09-22T13:09:52.558Z', '445 Al Ranch', 'Thursday'),
(DEFAULT, 'Desmond', 'Zboncak', '650-703-3414', '2019-06-12T06:04:26.967Z', '1320 White Parkways', 'Tuesday'),
(DEFAULT, 'Ryley', 'Mohr', '595.341.3451 x04372', '2020-02-14T08:45:48.270Z', '847 Reilly Street', 'Friday'),
(DEFAULT, 'Mandy', 'Feeney', '777-123-7593 x90519', '2020-05-02T18:21:54.068Z', '385 Gerhold Field', 'Wednesday');

---------
------------------------------------DEPARTMENT------------------------------------
---------

CREATE TABLE department (
	id serial PRIMARY KEY,
	name varchar(255)
);

INSERT INTO department (id, name)
             VALUES
            (DEFAULT, 'Organic mobile database'),
            (DEFAULT, 'Centralized mobile hub'),
            (DEFAULT, 'Proactive multi-tasking policy'),
            (DEFAULT, 'Re-contextualized uniform customer loyalty'),
            (DEFAULT, 'Managed local time-frame'),
            (DEFAULT, 'Down-sized system-worthy algorithm'),
            (DEFAULT, 'Ergonomic actuating customer loyalty'),
            (DEFAULT, 'Ameliorated value-added productivity'),
            (DEFAULT, 'Open-source background capacity'),
            (DEFAULT, 'Universal even-keeled artificial intelligence');


---------
------------------------------------DIVISION------------------------------------
---------

CREATE TABLE division (
	id serial PRIMARY KEY,
	name varchar(255),
	description varchar(255),
	department_id integer REFERENCES department,
	start_date TIMESTAMP
);

INSERT INTO division (id, start_date, description)
             VALUES
(DEFAULT, '2015-05-14T04:01:18.546Z', 'capacitor'),
(DEFAULT, '2014-05-07T01:10:49.613Z', 'Euro'),
(DEFAULT, '2017-01-15T09:03:51.456Z', 'Roads'),
(DEFAULT, '2014-07-25T05:16:17.706Z', 'streamline'),
(DEFAULT, '2016-12-17T19:25:38.853Z', 'Integration'),
(DEFAULT, '2012-04-28T01:57:51.305Z', 'Turkish Lira'),
(DEFAULT, '2015-02-15T20:46:20.674Z', 'Lead'),
(DEFAULT, '2010-09-18T06:44:59.861Z', 'Washington'),
(DEFAULT, '2012-02-06T01:14:12.775Z', 'functionalities'),
(DEFAULT, '2010-09-23T13:51:55.377Z', 'Money shop Account');
---------
------------------------------------SUPLY_PRODUCT------------------------------------
---------

CREATE TABLE suply_product (
	id serial PRIMARY KEY,
	count_product varchar(255),
	supplier_id integer REFERENCES supplier,
    staff_id integer REFERENCES staff,
    shop_id integer REFERENCES shop,
	price_product varchar(255)
);

INSERT INTO suply_product (id,count_product, price_product)
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


CREATE TABLE timetable (
	id serial PRIMARY KEY,
	staff_id integer REFERENCES staff,
	start timestamp,
    finish timestamp
);

INSERT INTO timetable (id, staff_id, start, finish)
VALUES
(DEFAULT, DEFAULT, '2013-05-05T06:59:14.643Z', '2012-04-17T23:41:04.162Z'),
(DEFAULT, DEFAULT, '2015-04-07T18:21:31.218Z', '2014-03-11T22:59:25.923Z'),
(DEFAULT, DEFAULT, '2016-12-10T03:05:42.654Z', '2018-02-15T20:33:28.374Z'),
(DEFAULT, DEFAULT, '2015-01-10T04:38:24.027Z', '2016-05-09T19:49:29.389Z'),
(DEFAULT, DEFAULT, '2011-04-26T03:32:40.986Z', '2014-02-07T03:25:26.366Z'),
(DEFAULT, DEFAULT, '2017-07-02T16:34:26.538Z', '2014-09-13T07:52:39.096Z'),
(DEFAULT, DEFAULT, '2017-08-17T13:25:10.986Z', '2017-12-11T16:45:46.581Z'),
(DEFAULT, DEFAULT, '2011-10-18T15:41:09.982Z', '2014-10-22T13:56:43.357Z'),
(DEFAULT, DEFAULT, '2012-08-22T05:24:02.317Z', '2020-02-02T20:26:50.990Z'),
(DEFAULT, DEFAULT, '2017-07-04T06:08:49.328Z', '2011-12-15T20:12:26.749Z');


CREATE TABLE staff_division (
    division_id integer REFERENCES division,
    staff_id integer REFERENCES staff
);


CREATE TABLE staff_shop (
    shop_id integer REFERENCES shop,
    staff_id integer REFERENCES staff
);

CREATE TABLE product_shop (
    shop_id integer REFERENCES shop,
    product_id integer REFERENCES product
);

CREATE TABLE product_yellow_price (
    yellow_price_id integer REFERENCES yellow_price,
    product_id integer REFERENCES product
);

CREATE TABLE product_price (
    price_id integer REFERENCES price,
    product_id integer REFERENCES product
);

CREATE TABLE discount_card_special_discount (
    special_discount_id integer REFERENCES special_discount,
    discount_card_id integer REFERENCES  discount_card
);

CREATE TABLE discount_card_costumer (
    costumer_id integer REFERENCES costumer,
    discount_card_id integer REFERENCES  discount_card
);

CREATE TABLE buy_costumer (
    costumer_id integer REFERENCES costumer,
    buy_id integer REFERENCES  buy
);
------------------

create table receipt 
(	id serial PRIMARY KEY,
	count integer,
	product_id integer REFERENCES product,
 	value varchar(255),
	buy_id integer REFERENCES buy
);

INSERT INTO receipt (id, count, value)
VALUES
(DEFAULT,  2, '588.00'),
(DEFAULT,  3, '343.00'),
(DEFAULT,  4, '89.00'),
(DEFAULT,  5, '10.00'),
(DEFAULT,  6, '29.00'),
(DEFAULT,  7, '37.00'),
(DEFAULT,  8, '208.00'),
(DEFAULT,  2, '91.00'),
(DEFAULT,  3, '276.00'),
(DEFAULT,  5, '86.00');

---------
COMMIT transaction;