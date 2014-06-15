class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :link

      t.timestamps
    end
    add_index :projects, :link
  end
end
