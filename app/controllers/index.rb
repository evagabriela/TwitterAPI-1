get '/' do
  
  erb :twitter_name
end

post '/' do 
  redirect "/#{params[:TwitterName]}"
end

get '/:twitter_handler' do
  @user = User.find_by_name(params[:twitter_handler])
  @user = User.create(name: params[:twitter_handler]) if @user.nil?
  @tweets = @user.find_tweets 

  erb :tweets
end
