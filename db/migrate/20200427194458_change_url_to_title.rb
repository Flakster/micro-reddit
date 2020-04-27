class ChangeUrlToTitle < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :url, :title
  end
end
