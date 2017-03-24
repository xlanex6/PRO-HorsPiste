class RenameTypeOnRunType < ActiveRecord::Migration[5.0]
  def change
    rename_column :runs, :type, :run_type
  end
end
