class User < ActiveRecord::Base
  has_many :tweets

  def find_tweets
    tweets.map {|tweet| tweet.message }.take(10)
  end

end
