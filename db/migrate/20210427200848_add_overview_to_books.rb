class AddOverviewToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :overview, :string
  end
end
