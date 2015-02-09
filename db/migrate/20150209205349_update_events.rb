class UpdateEvents < ActiveRecord::Migration
  def change
    rename_column :events, :description, :capacity
    add_column :events, :description, :text

  end
end
