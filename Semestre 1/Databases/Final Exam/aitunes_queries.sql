# 1
SELECT g.genre_name, count(*)
FROM product p
INNER JOIN genre g ON p.genre_id = g.genre_id
GROUP BY (g.genre_id);

#  2

SELECT F.format_name, count(*)
FROM product p
LEFT JOIN format f ON  p.format_id = f.format_id
GROUP BY (f.format_id);

# 3
SELECT format_name
FROM format f
INNER JOIN product p ON f.format_id = p.format_id
INNER JOIN buy_order b ON p.product_id = b.product_id
INNER JOIN invoice i ON b.invoice_id = i.invoice_id
INNER JOIN  user u ON i.buyer_id = u.user_id
WHERE u.user_id = 1;

# 4
SELECT p.title, count(*)
FROM product p
INNER JOIN buy_order b on p.product_id = b.product_id
INNER JOIN invoice i on b.invoice_id = i.invoice_id
WHERE  MONTH(i.purchase_date) BETWEEN 1 AND 2
AND YEAR(i.purchase_date) = YEAR(CURDATE());

# 5
SELECT f.format_name
FROM buy_order b
INNER JOIN invoice i ON b.invoice_id = i.invoice_id
INNER JOIN user u ON i.buyer_id = u.user_id
INNER JOIN product p ON b.product_id = p.product_id
INNER JOIN format f ON p.format_id = f.format_id
WHERE TIMESTAMPDIFF(YEAR, U.birthday, curdate()) >= 40;

# 6
SELECT f.format_name, SUM(p.price * b.quantity)
FROM buy_order AS b
INNER JOIN product p ON b.product_id = p.product_id
INNER JOIN format f ON p.format_id = f.format_id
GROUP BY (f.format_id);

# 7
SELECT l.label_name, SUM(b.quantity) AS `Total`
FROM buy_order AS b
INNER JOIN product p ON b.product_id = p.product_id
INNER JOIN  label l ON p.label_id = l.label_id
GROUP BY (p.product_id)
ORDER BY (Total)
LIMIT 1;

# 8
SELECT p.title, SUM(b.quantity) AS `Total`
FROM buy_order as b
INNER JOIN product p on b.product_id = p.product_id
GROUP BY (p.product_id)
ORDER BY Total
LIMIT 5;

# Trigger
CREATE PROCEDURE  sp_label_genre(p_label_id INT, p_genre_id INT)
BEGIN
    SELECT p.title
    FROM  product as p
    WHERE p.label_id = p_label_id AND p.genre_id = p_genre_id;
END;

CALL sp_label_genre(3, 1);

# Procedure
CREATE  TRIGGER product_availability AFTER UPDATE ON product
    FOR EACH ROW
    BEGIN
        IF (NEW.in_stock <> OLD.in_stock) THEN
            INSERT INTO out_of_stock_products(product_id, out_of_stock_date) VALUES
                (OLD.product_id, CURDATE());
        END IF;
    END;



