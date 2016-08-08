class AddEnquoteToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :enquote, :text
  end
end
