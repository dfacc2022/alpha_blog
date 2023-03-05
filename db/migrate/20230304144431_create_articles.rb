class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t| #id
      t.string :title 
      t.timestamps
    end
  end
end
