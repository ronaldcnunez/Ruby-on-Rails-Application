class CreateConfirmedEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmed_events do |t|
      t.integer :event_id
      t.integer :venue_id
      t.integer :artist_id
      t.string :description
      t.string :date
      t.timestamps
    end
  end
end
