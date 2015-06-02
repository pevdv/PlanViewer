class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.integer :number
      t.string :code
      t.belongs_to :building, index: true, null: false

      t.timestamps
    end
  end
end
