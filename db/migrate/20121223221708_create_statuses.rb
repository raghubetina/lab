class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :step_id
      t.string :imac
      t.string :progress, :default => "Working"

      t.timestamps
    end
  end
end
