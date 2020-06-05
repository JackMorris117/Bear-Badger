require_relative('../models/book')
require_relative('../models/publisher')
require_relative('../models/genre')

publisher1 = Publisher.new({'name' => 'Penguin'})
genre1 = Genre.new({'name' => 'Romance'})

publisher1.save
genre1.save


book1 = Book.new({
    'name' => 'East of Eden',
    'author' => 'John Steinbeck',
    'publisher_id' => publisher1.id,
    'genre_id' => genre1.id,
    'price' => 10 })

book2 = Book.new({
    'name' => 'America Is in the Heart',
    'author' => 'Carlos Bulosan',
    'publisher_id' => publisher1.id,
    'genre_id' => genre1.id,
    'price' => 10 })

book3 = Book.new({
    'name' => 'Wuthering Heights',
    'author' => 'Emily Bronte',
    'publisher_id' => publisher1.id,
    'genre_id' => genre1.id,
    'price' => 10 })
    
book1.save
book2.save
book3.save