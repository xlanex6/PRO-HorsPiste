class CreateRuns < ActiveRecord::Migration[5.0]
  def change
    create_table :runs do |t|
      t.string :name
      t.references :area, foreign_key: true
      t.integer :technic
      t.integer :physical
      t.string :engagement
      t.string :type
      t.string :best_snow
      t.string :best_time
      t.string :expo
      t.integer :alt_start
      t.integer :alt_finish
      t.text :description

      t.timestamps
    end
  end
end
