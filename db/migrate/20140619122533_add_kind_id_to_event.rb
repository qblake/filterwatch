class AddKindIdToEvent < ActiveRecord::Migration
  def change
    add_column :events, :kind_id, :integer
  end
end
