class CreatePiesWebsites < ActiveRecord::Migration
  def change
    create_table :pies_websites, :id => false do |t|
      t.integer :pie_id
      t.integer :user_id
    end
  end
end
