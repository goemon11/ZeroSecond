class ChangMemoTitleNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :memos, :title, false
  end
end
