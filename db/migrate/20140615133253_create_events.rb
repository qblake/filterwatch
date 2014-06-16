#
class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.json :data

      t.timestamps
    end
  end
end
