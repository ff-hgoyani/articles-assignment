class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :tags, array: true
      t.datetime :last_updated

      t.timestamps
    end
  end
end
