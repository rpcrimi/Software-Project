class RenameTypeColumnToUsertype < ActiveRecord::Migration
  def up
  	rename_column :Users, :type, :usertype
  end

  def down
  	rename_column :Users, :usertype, :type
  end
end
