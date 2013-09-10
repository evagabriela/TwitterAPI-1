def log_user(username)
  new_user = User.create(name: username)
  fetch_new_tweets(new_user)
end

def fetch_new_tweets(username)
  tweets = Twitter.user_timeline(username).map { |t| t.text }
  tweets.each do |tweet|
    username.tweets << Tweet.create(message: tweet)
  end
end
