CREATE DATABASE store_db;
USE store_db;

CREATE TABLE Client (
     clientId char(6) PRIMARY KEY,
     firstName VARCHAR(20),
     lastName VARCHAR(20),
     adress VARCHAR(30),
     telNum VARCHAR(14),
     email VARCHAR(30),
     pwd VARCHAR(30)
);




    CREATE TABLE Product_cmd (
        productId char(6) PRIMARY KEY,
        label VARCHAR(20),
        description VARCHAR(50),
        price DECIMAL(10,2),
        quantity_in_stock INT
    );


    CREATE TABLE Order_ (
        orderId char(6) PRIMARY KEY,
        orderDate DATE,
        shippningAddr VARCHAR(50),
        clientId INT REFERENCES Client(clientId)
    );


    CREATE TABLE orderDetail(
            quantity INT,
            productId char(6),
            FOREIGN KEY(productId) REFERENCES Product_cmd(productId),
            orderId char(6),
            FOREIGN KEY(orderId) REFERENCES Order(orderId),
            PRIMARY KEY (productId, orderId)
    );
