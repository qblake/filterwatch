#
class CreateEventKind < ActiveRecord::Migration
  def change
    create_table :event_kinds do |t|
      t.string :name
    end
  end
end
