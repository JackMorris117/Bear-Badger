require('sinatra')
require('sinatra/contrib/all') 
require_relative('./models/book')
require_relative('./models/publisher')
require_relative('./models/genre')
also_reload('./models/*')

get '/BearAndBadger' do
    erb( :home )
end
get '/BearAndBadger/all-books' do
    @books = Book.all
    erb(:all_books)
end
get '/BearAndBadger/about-us' do
    erb( :about_us )
end
get '/BearAndBadger/:id'do 
    @book = Book.find(params[:id])
    erb( :show )
end
get '/BearAndBadger/:id/edit' do
    @publishers = Publisher.all
    @genres = Genre.all

    @book = Book.find(params['id'])
    erb(:edit)
end
get '/BearAndBadger/:id'do 
    @book = Book.new(params)
    student.update
    redirect to "/BearAndBadger/#{params['id']}"
end