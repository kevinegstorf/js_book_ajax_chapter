class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event
      t.string :location
      t.string :date
      t.string :map

      t.timestamps
    end
  end
end
