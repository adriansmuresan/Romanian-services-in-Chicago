class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :contact_info, null: false
      t.integer :category_id
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
