class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date    :date
      t.string  :location
      t.integer :description
      t.boolean :req_id
    end
  end
end
