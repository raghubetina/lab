class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :position
      t.text :description
      t.integer :lab_id

      t.timestamps
    end
  end
end
