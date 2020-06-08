require('sinatra')
require('sinatra/contrib/all') 
require_relative('./models/book')
require_relative('./models/publisher')
require_relative('./models/genre')
also_reload('./models/*')
require('pry')

get '/BearAndBadger/about-us' do
    erb(:about_us)
end

get '/BearAndBadger/books' do
    @books = Book.all()
    erb(:index_book)
end
get '/BearAndBadger/publishers' do
    @publishers = Publisher.all()
    erb(:index_publisher)
end
get '/BearAndBadger/genres' do
    @genres = Genre.all()
    erb(:index_genre)
end



get '/BearAndBadger/new-book' do 
    @books = Book.all
    @publishers = Publisher.all
    @genres = Genre.all
    erb(:new_book)
end
get '/BearAndBadger/new-publisher' do 
    @books = Book.all
    @publishers = Publisher.all
    @genres = Genre.all
    erb(:new_publisher)
end
get '/BearAndBadger/new-genre' do 
    @books = Book.all
    @publishers = Publisher.all
    @genres = Genre.all
    erb(:new_genre)
end



get '/BearAndBadger/all-books' do
    @books = Book.all
    erb(:all_books)
end
get '/BearAndBadger/all-publishers' do
    @publishers = Publisher.all
    erb(:all_publishers)
end
get '/BearAndBadger/all-genres' do
    @genres = Genre.all
    erb(:all_genres)
end




get '/BearAndBadger/books/:id'do 
    @book = Book.find(params[:id])
    @publishers = Publisher.all
    @genres = Genre.all
    erb(:show_books)
end
get '/BearAndBadger/publishers/:id'do 
    @book = Book.all
    @publishers = Publisher.find(params[:id])
    @genres = Genre.all
    erb(:show_publishers)
end
get '/BearAndBadger/genres/:id'do 
    @book = Book.all
    @publishers = Publisher.all
    @genres = Genre.find(params[:id])
    erb(:show_genres)
end





post '/BearAndBadger/new-book' do 
    @book = Book.new( params )
    @book.save()
    erb(:create)
end
post '/BearAndBadger/new-publisher' do 
    @publisher = Publisher.new( params )
    @publisher.save()
    erb(:create)
end
post '/BearAndBadger/new-genre' do 
    @genre = Genre.new( params )
    @genre.save()
    erb(:create)
end



get '/BearAndBadger/books/:id/edit' do  
    @publishers = Publisher.all
    @genres = Genre.all
    @book = Book.find( params[:id] )
    erb(:edit)
end

post '/BearAndBadger/books/:id' do 
    book = Book.new(params)
    book.update
    redirect to "/BearAndBadger/books"
end

get '/BearAndBadger/publishers/:id/edit-publisher' do  
    @genres = Genre.all
    @book = Book.all
    @publisher = Publisher.find( params[:id] )
    erb(:edit_publisher)
end


post '/BearAndBadger/publishers/:id' do 
    publisher = Publisher.new( params ) 
    publisher.update()
    redirect to '/BearAndBadger/publishers'

end
get '/BearAndBadger/genres/:id/edit-genre' do  
    @genre = Genre.find( params[:id] )
    @books = Book.all
    @publishers = Publisher.all
    erb(:edit_genre)
end

post '/BearAndBadger/genres/:id' do 
    genre = Genre.new( params ) 
    genre.update()
    redirect to '/BearAndBadger/genres'

end



post '/BearAndBadger/new-book/:id' do  
    book_to_update = Book.new( params )
    book_to_update.update()
    redirect to '/BearAndBadger/books'
end
post '/BearAndBadger/new-publisher/:id' do  
    publisher_to_update = Publisher.new( params )
    publisher_to_update.update()
    redirect to '/BearAndBadger/publishers'
end
post '/BearAndBadger/new-genre/:id' do  
    genre_to_update = Genre.new( params )
    genre_to_update.update()
    redirect to '/BearAndBadger/genres'
end




post '/BearAndBadger/books/:id/delete' do 
    book = Book.find( params[:id] )
    book.delete()
    redirect to '/BearAndBadger'
end
post '/BearAndBadger/publishers/:id/delete' do 
    publisher = Publisher.find( params[:id] )
    publisher.delete()
    redirect to '/BearAndBadger/publishers'
end
post '/BearAndBadger/genres/:id/delete' do 
    genre = Genre.find( params[:id] )
    genre.delete()
    redirect to '/BearAndBadger/genres'
end



