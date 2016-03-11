class RenameNameToTitleInThings < ActiveRecord::Migration
  def change
    rename_column :things, :name, :title
  end
end
