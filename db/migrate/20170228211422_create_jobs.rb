class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :origin
      t.string :destination
      t.integer :boat_id
      t.decimal :cost
      t.integer :quantity

      t.timestamps
    end
  end
end
