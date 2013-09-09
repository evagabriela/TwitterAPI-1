class RemoveTweetTimeFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :tweet_time
  end
end
