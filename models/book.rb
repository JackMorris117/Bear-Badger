require_relative('../db/sql_runner')

class Book
    attr_accessor :name, :author, :publisher_id, :genre_id, :price
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
        @author = options['author']
        @publusher_id = options['publisher_id'].to_i
        @genre_id = options['genre_id'].to_i
        @price = options['price']
    end
    def save()
        sql = "INSERT INTO books
        (
            name,
            author,
            publisher_id,
            genre_id,
            price
        )
        VALUES
        (
            $1, $2, $3, $4, $5
        )
        RETUNING id"
        values = [name, author, publisher_id, genre_id, price]
        result = SqlRunner.run(sql, values)
        id = result.first['id']
        @id = id
    end

    def update()
        sql = "UPDATE books SET
        (
            name,
            author,
            publisher_id,
            genre_id,
            price
        ) =
        (
            $1, $2, $3, $4, $5
        )
        WHERE id = $6"
        values = [name, author, publisher_id, genre_id, price]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM books
        WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def self.all()
        sql = "SELECT * FROM books"
        book_data = SqlRunner.run(sql)
        books = map_items(book_data)
        return books
    end

    def self.map_items(book_data)
        return book_data.map { |book| book.new(book) }
    end
    def self.find(id)
        sql = "SELECT * FROM books
        WHERE id = $1"
        values = [id]
        result = SqlRunner.run(sql, values).first
        book = Book.new(result)
        return book
    end

    


end