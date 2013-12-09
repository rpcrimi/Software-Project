class RemoveColumnRoom < ActiveRecord::Migration
  def up
  	remove_column :Users, :room
  end

  def down
  end
end
