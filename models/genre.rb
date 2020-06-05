require_relative('../db/sql_runner')

class Genre
    attr_accessor :name
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
        
    end
    def save()
        sql = "INSERT INTO genres
        (
            name
            
        )
        VALUES
        (
            $1
        )
        RETUNING id"
        values = [name]
        result = SqlRunner.run(sql, values)
        id = result.first['id']
        @id = id
    end

    def update()
        sql = "UPDATE genres SET
        (
            name
        ) =
        (
            $1
        )
        WHERE id = $2"
        values = [name]
        SqlRunner.run(sql, values)
    end

    def delete()
        sql = "DELETE FROM genres
        WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def self.all()
        sql = "SELECT * FROM genres"
        genre_data = SqlRunner.run(sql)
        genres = map_items(genre_data)
        return genres
    end

    def self.map_items(genre_data)
        return genre_data.map { |genre| genre.new(genre) }
    end
    def self.find(id)
        sql = "SELECT * FROM genres
        WHERE id = $1"
        values = [id]
        result = SqlRunner.run(sql, values).first
        genre = Genre.new(result)
        return genre
    end

    


end