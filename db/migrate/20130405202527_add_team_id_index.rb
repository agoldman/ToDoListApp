class AddTeamIdIndex < ActiveRecord::Migration
  def change
    add_index(:projects, :team_id)
  end
end
