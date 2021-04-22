class MakeNotesPolymorphic < ActiveRecord::Migration[6.1]
  def up
    remove_foreign_key :notes, :tasks
    remove_column :notes,:task_id
    add_column :notes, :owner_id, :string
    add_column :notes, :owner_type, :string
  end

  def down
    add_foreign_key :notes, :tasks
    remove_column :notes, :owner_id
    remove_column :notes, :owner_type
  end
end
