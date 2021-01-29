class CreateToolbelts < ActiveRecord::Migration[6.1]
  def change
    create_table :toolbelts do |t|
      t.integer :craftsman_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
