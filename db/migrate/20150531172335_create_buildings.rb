class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.text :address
      t.string :name
      t.string :postal_code
      t.string :image_url

      t.timestamps
    end
  end
end
