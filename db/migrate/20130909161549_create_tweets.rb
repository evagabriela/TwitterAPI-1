class CreateTweets < ActiveRecord::Migration
  
  def change
     create_table :tweets do |t|
      t.text :message
      t.time :tweet_time
      t.belongs_to :user
      t.timestamps
    end
  end
end
