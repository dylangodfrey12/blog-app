class AddCreatedAtToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :creation_at, :datetime
  end
end
