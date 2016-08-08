class AddEndescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :endescription, :text
  end
end
