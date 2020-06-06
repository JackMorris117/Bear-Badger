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
    erb(:new)
end

get '/BearAndBadger/all-books' do
    @books = Book.all
    erb(:all_books)
end
get '/BearAndBadger/about-us' do
    erb(:about_us)
end
get '/BearAndBadger/:id'do 
    @book = Book.find(params[:id])
    erb(:show)
end
post '/BearAndBadger' do 
    @book = Book.new( params )
    @book.save()
    erb(:create)
end
get '/BearAndBadger/:id/edit' do # edit
    @book = Book.find( params[:id] )
    erb(:edit)
end
post '/BearAndBadger/:id' do # update
    book_to_update = Book.new( params )
    book_to_update.update()
    redirect to '/BearAndBadger'
end
  
get '/BearAndBadger/:id'do 
    @book = Book.new(params)
    student.update
    redirect to "/BearAndBadger/#{params['id']}"
end