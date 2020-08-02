class ChangeMemosTitleNolimit < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column :memos, :title, :string
    end
    def down
      change_column :memos, :title, :string, limit: 50
    end  
  end
end
