class CreateLayouts < ActiveRecord::Migration
  def change
    create_table :layouts do |t|
      t.string :description
      t.string :file_location
      t.references :floor, index: true

      t.timestamps
    end
  end
end
