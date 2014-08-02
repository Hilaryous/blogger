class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body #this is a large test field, some DBs use text, some use varchar but we don't really have to worry about it in Rails

      t.timestamps #creates a created_at and updated_at column
    end
  end
end
