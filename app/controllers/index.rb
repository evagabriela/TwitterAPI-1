get '/' do
  
  erb :twitter_name
end

post '/' do 
  redirect "/#{params[:TwitterName]}"
end

get '/:twitter_handler' do
  @tname = params[:twitter_handler]
  @tmsgs = Twitter.user_timeline(@tname).map {|t| t.text}
  erb :tweets
end
