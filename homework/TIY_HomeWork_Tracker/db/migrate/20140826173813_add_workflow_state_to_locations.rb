class AddWorkflowStateToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :workflow_state, :string
  end
end
