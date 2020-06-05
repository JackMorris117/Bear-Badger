require_relative('../models/book')
require_relative('../models/publisher')
require_relative('../models/genre')

publisher1 = Publisher.new({'name' => 'Penguin'})
publisher2 = Publisher.new({'name' => 'Macmillan'})
publisher3 = Publisher.new({'name' => 'HarperCollins'})

genre1 = Genre.new({'name' => 'Romance'})
genre2 = Genre.new({'name' => 'Horror'})
genre3 = Genre.new({'name' => 'Sci-Fi'})
genre4 = Genre.new({'name' => 'Mystery'})
genre5 = Genre.new({'name' => 'Fantasy'})
genre6 = Genre.new({'name' => 'Biography'})

publisher1.save
publisher2.save
publisher3.save

genre1.save
genre2.save
genre3.save
genre4.save
genre5.save
genre6.save


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
    'genre_id' => genre6.id,
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