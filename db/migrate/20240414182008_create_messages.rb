class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :text, null: false
      t.string :user_id, null: false
      t.string :role, null: false

      t.timestamps
    end
  end
end
