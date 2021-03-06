require_relative('../db/sql_runner')

class Book
    attr_accessor :name, :author, :publisher_id, :genre_id, :buying_cost, :price, :stock, :description
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
        @author = options['author']
        @publisher_id = options['publisher_id'].to_i
        @genre_id = options['genre_id'].to_i
        @buying_cost = options['buying_cost'].to_f.round(2)
        @price = options['price'].to_f
        @stock = options['stock'].to_i
        @description = options['description']
    end

    def save()
        sql = "INSERT INTO books
        (
            name,
            author,
            publisher_id,
            genre_id,
            buying_cost,
            price,
            stock,
            description
        )
        VALUES
        (
            $1, $2, $3, $4, $5, $6, $7, $8
        )
        RETURNING id"
        values = [@name, @author, @publisher_id, @genre_id, @buying_cost, @price, @stock, @description]
        result = SqlRunner.run(sql, values)
        id = result.first['id']
        @id = id.to_i
    end

    def update()
        sql = "UPDATE books SET
        (
            name,
            author,
            publisher_id,
            genre_id,
            buying_cost,
            price,
            stock,
            description
        ) =
        (
            $1, $2, $3, $4, $5, $6, $7, $8
        )
        WHERE id = $9"
        values = [@name, @author, @publisher_id, @genre_id, @buying_cost, @price, @stock, @description, @id]
        SqlRunner.run(sql, values)
    end
    

    def publisher()
        publisher = Publisher.find(@publisher_id)
        return publisher
    end
    
    def genre()
        genre = Genre.find(@genre_id)
        return genre
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
        return book_data.map { |book| Book.new(book) }
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