class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :user
      t.text :tweet
      t.references :item

      t.timestamps
    end
    add_index :tweets, :item_id
  end
end
