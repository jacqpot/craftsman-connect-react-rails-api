class CreateCraftsmen < ActiveRecord::Migration[6.1]
  def change
    create_table :craftsmen do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :city
      t.string :state
      t.string :bio
      t.string :website
      t.boolean :open_to_work

      t.timestamps
    end
  end
end
