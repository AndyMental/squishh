class AddSummaryToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :summary, :string
  end
end
