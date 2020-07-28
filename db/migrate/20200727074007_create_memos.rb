class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string :title, :limit 50, null: false
      t.text :description
      t.timestamps
    end
  end
end
