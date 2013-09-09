get '/' do
  
  erb :twitter_name
end

post '/' do 
  redirect "/#{params[:TwitterName]}"
end

get '/:twitter_handler' do

  erb :tweets
end
