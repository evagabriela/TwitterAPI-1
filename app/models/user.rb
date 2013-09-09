class User < ActiveRecord::Base
  has_many :tweets

  def find_tweets
    tweets.limit(10)
  end

end
