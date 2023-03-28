class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :user_id
      t.integer :campaign_id
      t.integer :rating

      t.timestamps
    end
  end
end
