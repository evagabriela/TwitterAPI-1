get '/' do
  erb :twitter_name
end

post '/' do 
  redirect "/#{params[:TwitterName]}"
end

get '/:twitter_handler' do
  @user = User.find_by_name(params[:twitter_handler])
  @user = log_user(params[:twitter_handler]) if @user.nil?

  @user = update_user(@user) if over_time?(@user, 1)

  @tweets = @user.find_tweets 
  erb :tweets
end
