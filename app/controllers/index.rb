get '/' do
  
  erb :twitter_name
end

get '/:twitter_handler' do

  erb :tweets
end
