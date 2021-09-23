# OLD DB design
# CREATE DATABASE aitunes;
#
# use aitunes;
#
# CREATE TABLE IF NOT EXISTS label(
#     label_id INT,
#     label_name VARCHAR(255),
#     PRIMARY KEY(label_id)
# );
#
# CREATE TABLE IF NOT EXISTS genre(
#     genre_id INT,
#     genre_name VARCHAR(255),
#     PRIMARY KEY(genre_id)
# );
#
# CREATE TABLE IF NOT EXISTS format(
#     format_id INT,
#     format_name VARCHAR(255),
#     PRIMARY KEY(format_id)
# );
#
# CREATE TABLE IF NOT EXISTS product(
#   product_id INT,
#   title VARCHAR(255),
#   release_date DATE,
#   price FLOAT,
#   label_id INT,
#   genre_id INT,
#   format_id INT,
#   PRIMARY KEY (product_id),
#   FOREIGN KEY (label_id) REFERENCES label(label_id),
#   FOREIGN KEY (genre_id) REFERENCES genre(genre_id),
#   FOREIGN KEY (format_id) REFERENCES format(format_id)
# );
#
# CREATE TABLE IF NOT EXISTS user(
#     user_id INT,
#     name VARCHAR(255),
#     birthday DATE,
#     PRIMARY KEY (user_id)
# );
#
# CREATE TABLE IF NOT EXISTS buy_order (
#     buy_order_id INT,
#     product_id INT,
#     quantity INT,
#     PRIMARY KEY (buy_order_id),
#     FOREIGN KEY (product_id) REFERENCES product(product_id)
# );
#
# CREATE TABLE IF NOT EXISTS invoice(
#     invoice_id INT,
#     buyer_id INT,
#     buy_order_id INT,
#     purchase_date DATE,
#     PRIMARY KEY (invoice_id),
#     FOREIGN KEY (buyer_id) REFERENCES  user(user_id),
#     FOREIGN KEY (buy_order_id) REFERENCES buy_order(buy_order_id)
# );
#

# New DB Design, minor change in Invoice and buy_order tables, only changing direction of FK.
CREATE DATABASE aitunes;

use aitunes;

CREATE TABLE IF NOT EXISTS label(
    label_id INT,
    label_name VARCHAR(255),
    PRIMARY KEY(label_id)
);

CREATE TABLE IF NOT EXISTS genre(
    genre_id INT,
    genre_name VARCHAR(255),
    PRIMARY KEY(genre_id)
);

CREATE TABLE IF NOT EXISTS format(
    format_id INT,
    format_name VARCHAR(255),
    PRIMARY KEY(format_id)
);

CREATE TABLE IF NOT EXISTS product(
  product_id INT,
  title VARCHAR(255),
  release_date DATE,
  price FLOAT,
  label_id INT,
  genre_id INT,
  format_id INT,
  in_stock BIT,
  PRIMARY KEY (product_id),
  FOREIGN KEY (label_id) REFERENCES label(label_id),
  FOREIGN KEY (genre_id) REFERENCES genre(genre_id),
  FOREIGN KEY (format_id) REFERENCES format(format_id)
);

CREATE TABLE IF NOT EXISTS user(
    user_id INT,
    name VARCHAR(255),
    birthday DATE,
    PRIMARY KEY (user_id)
);

CREATE TABLE IF NOT EXISTS buy_order (
    buy_order_id INT,
    product_id INT,
    quantity INT,
    invoice_id INT,
    PRIMARY KEY (buy_order_id),
    FOREIGN KEY (invoice_id) REFERENCES  invoice(invoice_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE IF NOT EXISTS invoice(
    invoice_id INT,
    buyer_id INT,
#     buy_order_id INT,
    purchase_date DATE,
    PRIMARY KEY (invoice_id),
    FOREIGN KEY (buyer_id) REFERENCES  user(user_id)
#     FOREIGN KEY (buy_order_id) REFERENCES buy_order(buy_order_id)
);

CREATE TABLE IF NOT EXISTS out_of_stock_products(
  product_id INT,
  out_of_stock_date DATE,
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);
