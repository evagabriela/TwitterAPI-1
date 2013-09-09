twitteruser = User.create(name: 'chaeokeefe')

tweets = Twitter.user_timeline('chaeokeefe').map {|t| t.text}

tweets.each do |tweet|
  twitteruser.tweets << Tweet.create(message: tweet)
end
