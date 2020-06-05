require_relative('../db/sql_runner')

class Publisher
    attr_accessor :name
    attr_reader :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
        
    end

    def save()
        sql = "INSERT INTO publishers
        (
            name
            
        )
        VALUES
        (
            $1
        )
        RETURNING id"
        values = [name]
        result = SqlRunner.run(sql, values)
        id = result.first['id']
        @id = id
    end

    def update()
        sql = "UPDATE publishers SET
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
        sql = "DELETE FROM publishers
        WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    def self.all()
        sql = "SELECT * FROM publishers"
        publisher_data = SqlRunner.run(sql)
        publishers = map_items(publisher_data)
        return publishers
    end

    def self.map_items(publisher_data)
        return publisher_data.map { |publisher| Publisher.new(publisher) }
    end

    def self.find(id)
        sql = "SELECT * FROM publishers
        WHERE id = $1"
        values = [id]
        result = SqlRunner.run(sql, values).first
        publisher = Publisher.new(result)
        return publisher
    end

    


end