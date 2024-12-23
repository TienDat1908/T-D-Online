class AddPreviousUpdatedAtToPostArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :post_articles, :previous_updated_at, :datetime
  end
end
