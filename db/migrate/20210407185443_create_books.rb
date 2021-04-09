class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_name
      t.string :genre
      t.string :img_url

      t.timestamps
    end
  end
end