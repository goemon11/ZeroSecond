class ChangeMemoTitleLimit50 < ActiveRecord::Migration[6.0]
  def up
    change_column :memos, :title, :string, limit: 50
  end
  def down
    change_column :memos, :title, :string
  end
end
