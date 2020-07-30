class AddImageToMemos < ActiveRecord::Migration[6.0]
  def change
    add_column :memos, :image, :string
  end
end
