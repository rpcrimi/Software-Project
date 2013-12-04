class AddExceptionsToUser < ActiveRecord::Migration
  def change
    add_column :users, :exceptions, :string
  end
end
