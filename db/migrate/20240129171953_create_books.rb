class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.float :price
      t.string :date
      t.timestamps
    end
  end
end
