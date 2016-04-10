class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :images, :comment, :caption
  end 
end
