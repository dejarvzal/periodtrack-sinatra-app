class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :month
      t.integer :start_day
      t.text :note
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
