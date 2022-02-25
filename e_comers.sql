CREATE DATABASE gestion_products ;

USE gestion_products ;

CREATE TABLE Clients(
    id int NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    firstName varchar(255) NOT NULL ,
    lastName varchar(255) NOT NULL , 
    addres varchar(255) NOT NULL ,
    phone_num varchar(255) NOT NULL ,
    password varchar(255) NOT NULL ,
    email varchar(255) NOT NULL ,
);


CREATE TABLE Product(
    id_product varchar(255) NOT NULL PRIMARY KEY ,
    label varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    quantity varchar(255) NOT NULL,
    price_unit decimal(10,2) NOT NULL
);

CREATE TABLE commads (
    num_cmd varchar(255) NOT NULL PRIMARY KEY ,
    address_livation varchar(255) NOT NULL ,
    date_livation date NOT NULL ,
    clientID int REFERENCES Clients(id)
);

CREATE TABLE detail_cmd(
    FOREIGN KEY (cmd_num) varchar(255) REFERENCES commads(num_cmd),
    quantity int(255) NO NULL ,
    FOREIGN KEY (product_id) varchar(255) REFERENCES Product(id_product)
);