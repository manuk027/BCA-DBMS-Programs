CREATE TABLE book(
book_id NUMERIC(15) PRIMARY KEY,
bookname VARCHAR(100),
author VARCHAR(100),
publisher VARCHAR(20)
);

INSERT INTO book VALUES
(101, 'Datastructures', 'Lipschutz', 'McGraw Hill'),
(102, 'Database', 'Schilberschotz', 'Pearson'),
(103, 'Micro', 'Goankar', 'McGraw Hill');

SELECT * FROM book;

CREATE TABLE book_del(
date_of_del DATE NOT NULL,
bookid NUMERIC(15),
bookname VARCHAR(15)
);

CREATE OR REPLACE FUNCTION delete_book()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
INSERT INTO book_del (date_of_del, bookid, bookname)
VALUES (CURRENT_DATE, OLD.book_id, OLD.bookname);
RETURN OLD;
END;
$$;

CREATE TRIGGER del_book
BEFORE DELETE ON book
FOR EACH ROW
EXECUTE PROCEDURE delete_book();

DELETE FROM book WHERE book_id = 103;

SELECT * FROM book_del;
