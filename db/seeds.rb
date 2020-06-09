require_relative('../models/book')
require_relative('../models/publisher')
require_relative('../models/genre')


publisher1 = Publisher.new({'name' => 'Penguin'})
publisher2 = Publisher.new({'name' => 'Macmillan'})
publisher3 = Publisher.new({'name' => 'HarperCollins'})
publisher4 = Publisher.new({'name' => 'Bloomsbury'})
publisher5 = Publisher.new({'name' => 'Hachette Livre'})

genre1 = Genre.new({'name' => 'Romance'})
genre2 = Genre.new({'name' => 'Horror'})
genre3 = Genre.new({'name' => 'Sci-Fi'})
genre4 = Genre.new({'name' => 'Mystery'})
genre5 = Genre.new({'name' => 'Fantasy'})
genre6 = Genre.new({'name' => 'Biography'})

publisher1.save
publisher2.save
publisher3.save
publisher4.save
publisher5.save


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
    'buying_cost' => 3.25,
    'price' => 10.99,
    'stock' => 5,
    'description' => "California's fertile Salinas Valley is home to two families whose destinies are fruitfully, and fatally, intertwined. Over the generations, between the beginning of the twentieth century and the end of the First World War, the Trasks and the Hamiltons will helplessly replay the fall of Adam and Eve and the murderous rivalry of Cain and Abel. East of Eden was considered by Steinbeck to be his magnum opus, and its epic scope and memorable characters, exploring universal themes of love and identity, ensure it remains one of America's most enduring novels. This edition features a stunning new cover by renowned artist Bijou Karman."})

book2 = Book.new({
    'name' => 'America Is in the Heart',
    'author' => 'Carlos Bulosan',
    'publisher_id' => publisher1.id,
    'genre_id' => genre6.id,
    'buying_cost' => 3.25,
    'price' => 10.99,
    'stock' => 5,
    'description' => "Bulosan's America Is in the Heart is one of the few books that detail the migrant workers' struggles in the United States during the 1930s through the 1940s, a time when signs like 'Dogs and Filipinos not allowed' were common. ... In this book, Bulosan also narrated his attempts to establish a labor union."})

book3 = Book.new({
    'name' => 'Wuthering Heights',
    'author' => 'Emily Bronte',
    'publisher_id' => publisher1.id,
    'genre_id' => genre1.id,
    'buying_cost' => 3.25,
    'price' => 10.99,
    'stock' => 5,
    'description' => "Puffin Clothbound Classics - stunningly beautiful hardback editions of the most famous stories in the world. Heathcliff, an orphan, is raised by Mr Earnshaw as one of his own children. Hindley despises him but wild Cathy becomes his constant companion, and he falls deeply in love with her. But when she will not marry him, Heathcliff's terrible vengeance ruins them all. Yet still his and Cathy's love will not die."})
    
book4 = Book.new({
    'name' => 'Harry Potter',
    'author' => 'J K Rowling',
    'publisher_id' => publisher4.id,
    'genre_id' => genre5.id,
    'buying_cost' => 3.98,
    'price' => 15.99,
    'stock' => 0,
    'description' => "When mysterious letters start arriving on his doorstep, Harry Potter has never heard of Hogwarts School of Witchcraft and Wizardry. They are swiftly confiscated by his aunt and uncle. Then, on Harry’s eleventh birthday, a strange man bursts in with some important news: Harry Potter is a wizard and has been awarded a place to study at Hogwarts. And so the first of the Harry Potter adventures is set to begin."})

book5 = Book.new({
    'name' => 'Are u ok?',
    'author' => 'Kati Morton',
    'publisher_id' => publisher5.id,
    'genre_id' => genre6.id,
    'buying_cost' => 2.01,
    'price' => 7.99,
    'stock' => 10,
    'description' => "Get answers to your most common questions about mental health and mental illness — including anxiety, depression, bipolar and eating disorders, and more. Are u ok? walks readers through the most common questions about mental health and the process of getting help — from finding the best therapist to navigating harmful and toxic relationships and everything in between. In the same down-to-earth, friendly tone that makes her videos so popular, licensed marriage and family therapist and YouTube sensation Kati Morton clarifies and destigmatizes the struggles so many of us go through and encourages readers to reach out for help."})

book6 = Book.new({
    'name' => 'The Physick Book of Deliverance Dane',
    'author' => 'Katherine Howe',
    'publisher_id' => publisher5.id,
    'genre_id' => genre5.id,
    'buying_cost' => 5.17,
    'price' => 15.99,
    'stock' => 2,
    'description' => "A spellbinding, beautifully written novel that moves between contemporary times and one of the most fascinating and disturbing periods in American history – the Salem witch trials. Harvard graduate student Connie Goodwin needs to spend her summer doing research for her doctoral dissertation. But when her mother asks her to handle the sale of Connie’s grandmother’s abandoned home near Salem, she can’t refuse. As she is drawn deeper into the mysteries of the family house, Connie discovers an ancient key within a seventeenth-century Bible. The key contains a yellowing fragment of parchment with a name written upon it: Deliverance Dane. This discovery launches Connie on a quest-to find out who this woman was and to unearth a rare artifact of singular power: a physick book, its pages a secret repository for lost knowledge. As the pieces of Deliverance’s harrowing story begin to fall into place, Connie is haunted by visions of the long-ago witch trials, and she begins to fear that she is more tied to Salem’s dark past then she could have ever imagined. Written with astonishing conviction and grace, The Physick Book of Deliverance Dane travels seamlessly between the witch trials of the 1690s and a modern woman’s story of mystery, intrigue, and revelation."})

book7 = Book.new({
    'name' => 'The Depression Cure',
    'author' => 'Stephen S. Ilardi, PhD',
    'publisher_id' => publisher5.id,
    'genre_id' => genre6.id,
    'buying_cost' => 3.55,
    'price' => 10.99,
    'stock' => 0,
    'description' => "Based on the highly effective, proven Therapeutic Lifestyle Change (TLC) program: a practical plan for natural ways to treat depression — without medication In the past decade, depression rates have skyrocketed, and one in four Americans suffer from major depression at some point in their lives. Where have we gone wrong? Dr. Stephen Ilardi sheds light on our current predicament and reminds us that our bodies were never designed for the sleep-deprived, poorly nourished, frenzied pace of twenty-first century life. Inspired by the extraordinary resilience of aboriginal groups like the Kaluli of Papua New Guinea, Dr. Ilardi prescribes an easy-to-follow, clinically proven program that harks back to what our bodies were originally made for and what they continue to need with these six components:# Brain Food #  Don’t Think, Do #  Antidepressant Exercise #  Let There Be Light #  Get Connected #  Habits of Healthy Sleep ~ The Depression Cure‘s holistic approach has been met with great success rates, helping even those who have failed to respond to traditional medications. For anyone looking to supplement their treatment, The Depression Cure offers hope and a practical path to wellness for anyone."})

book8 = Book.new({
    'name' => 'The Microbiome Diet',
    'author' => 'Raphael Kellman, MD',
    'publisher_id' => publisher5.id,
    'genre_id' => genre6.id,
    'buying_cost' => 3.01,
    'price' => 8.99,
    'stock' => 50,
    'description' => "The groundbreaking program that connects the microbiome and gut health to healthy weight loss, complete with a three-phase plan and recipes. Cutting-edge science has shown that the microbiome is the key to overall mental and physical health — and the secret behind healthy, sustainable weight loss. Drawing on nearly two decades of experience as a specialist in functional medicine and intestinal health, Dr. Raphael Kellman has developed the first diet based on these scientific breakthroughs. Offering a proven program to heal your gut and reset your metabolism, along with meal plans and fifty delicious chef-created recipes, The Microbiome Diet is the key to safe, sustainable weight loss and a lifetime of good health."})

book1.save
book2.save
book3.save
book4.save
book5.save
book6.save
book7.save
book8.save
