class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.text :name
      t.text :chunks
      t.text :icons
      t.text :meta
      t.text :url
      t.timestamps
    end
  end
end
