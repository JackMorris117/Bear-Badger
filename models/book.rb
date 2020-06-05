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