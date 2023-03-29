class CreateCampaigns < ActiveRecord::Migration[7.0]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.string :description
      t.string :category
      t.float :goal_amount
      t.string :image_url
      t.integer :current_amount
      t.date :start_date
      t.date :end_date
      # t.integer :user_id

      t.timestamps
    end
  end
end
