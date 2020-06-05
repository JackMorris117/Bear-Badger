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
        sql = "INSET INTO books
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

end