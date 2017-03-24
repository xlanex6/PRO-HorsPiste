class AddResortReferencesToRun < ActiveRecord::Migration[5.0]
  def change
    add_reference :runs, :resort, foreign_key: true
  end
end
