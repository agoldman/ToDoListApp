class AddprojectIdIndex < ActiveRecord::Migration
  def change
    add_index(:items, :project_id)
  end
end
