class CreateAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :areas do |t|
      t.string :name
      t.references :resort, foreign_key: true

      t.timestamps
    end
  end
end
