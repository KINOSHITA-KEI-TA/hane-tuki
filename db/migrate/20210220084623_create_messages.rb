class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.text :image, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
