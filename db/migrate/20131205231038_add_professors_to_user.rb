class AddProfessorsToUser < ActiveRecord::Migration
  def change
    add_column :users, :professors, :string
  end
end
