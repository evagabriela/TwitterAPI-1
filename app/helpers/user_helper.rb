def log_user(username)
  new_user = User.create(name: username)
  fetch_new_tweets(new_user)
  new_user
end

def fetch_new_tweets(user)
  tweets = Twitter.user_timeline(user.name).map { |t| t.text }
  tweets.each do |tweet|
    user.tweets << Tweet.create(message: tweet)
  end
end

def over_time?(user, time_interval)
  Time.now - user.created_at >= (time_interval * 60)
end

def update_user(user)
  username = user.name
  user.destroy
  log_user(username)
end
