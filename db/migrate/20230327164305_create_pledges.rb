class CreatePledges < ActiveRecord::Migration[7.0]
  def change
    create_table :pledges do |t|
      t.float :pledge_amount
      t.integer :user_id
      t.integer :campaign_id

      t.timestamps
    end
  end
end
