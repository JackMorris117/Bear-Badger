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
    'price' => 10,
    'stock' => 5,
    'description' => "California's fertile Salinas Valley is home to two families whose destinies are fruitfully, and fatally, intertwined. Over the generations, between the beginning of the twentieth century and the end of the First World War, the Trasks and the Hamiltons will helplessly replay the fall of Adam and Eve and the murderous rivalry of Cain and Abel. East of Eden was considered by Steinbeck to be his magnum opus, and its epic scope and memorable characters, exploring universal themes of love and identity, ensure it remains one of America's most enduring novels. This edition features a stunning new cover by renowned artist Bijou Karman."})

book2 = Book.new({
    'name' => 'America Is in the Heart',
    'author' => 'Carlos Bulosan',
    'publisher_id' => publisher1.id,
    'genre_id' => genre6.id,
    'price' => 10,
    'stock' => 5,
    'description' => "Bulosan's America Is in the Heart is one of the few books that detail the migrant workers' struggles in the United States during the 1930s through the 1940s, a time when signs like 'Dogs and Filipinos not allowed' were common. ... In this book, Bulosan also narrated his attempts to establish a labor union."})

book3 = Book.new({
    'name' => 'Wuthering Heights',
    'author' => 'Emily Bronte',
    'publisher_id' => publisher1.id,
    'genre_id' => genre1.id,
    'price' => 10,
    'stock' => 5,
    'description' => "Puffin Clothbound Classics - stunningly beautiful hardback editions of the most famous stories in the world. Heathcliff, an orphan, is raised by Mr Earnshaw as one of his own children. Hindley despises him but wild Cathy becomes his constant companion, and he falls deeply in love with her. But when she will not marry him, Heathcliff's terrible vengeance ruins them all. Yet still his and Cathy's love will not die."})
    
book1.save
book2.save
book3.save
