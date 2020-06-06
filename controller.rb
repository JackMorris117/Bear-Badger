require('sinatra')
require('sinatra/contrib/all') 
require_relative('./models/book')
require_relative('./models/publisher')
require_relative('./models/genre')
also_reload('./models/*')

get '/BearAndBadger' do
    @books = Book.all()
    erb(:index)
end

get '/BearAndBadger/new' do 
    @books = Book.all
    @publishers = Publisher.all
    @genres = Genre.all
    erb(:new)
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

get '/BearAndBadger/about-us' do
    erb(:about_us)
end

get '/BearAndBadger/:id'do 
    @book = Book.find(params[:id])
    @publishers = Publisher.all
    @genres = Genre.all
    erb(:show)
end

post '/BearAndBadger' do 
    @book = Book.new( params )
    @book.save()
    erb(:create)
end

get '/BearAndBadger/:id/edit' do  
    @publishers = Publisher.all
    @genres = Genre.all
    @book = Book.find( params[:id] )
    erb(:edit)
end

post '/BearAndBadger/:id' do
    book = Book.new(params)
    book.update
    redirect to "/BearAndBadger"
end

post '/BearAndBadger/:id' do  
    book_to_update = Book.new( params )
    book_to_update.update()
    redirect to '/BearAndBadger'
end

post '/BearAndBadger/:id/delete' do 
    book = Book.find( params[:id] )
    book.delete()
    redirect to '/BearAndBadger'
end
  