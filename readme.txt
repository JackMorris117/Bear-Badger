Walkthrough to run the project.

In the terminal inside the project1 folder type the following; pressing enter after each line

1.
 createdb bear_badger

2.
 psql -d bear_badger -f db/book_shop.sql

3.
 ruby db/seeds.ruby

4.
  ruby controller.ruby

5. Type this last step into your web browser
 http://localhost:4567/BearAndBadger