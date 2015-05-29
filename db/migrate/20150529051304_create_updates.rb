class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :title
      t.text :url
      t.text :content
      t.text :image
      t.text :tags
      t.integer :website_id
      t.timestamps
    end
  end
end
