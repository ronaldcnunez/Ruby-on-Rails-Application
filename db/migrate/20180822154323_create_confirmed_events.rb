class CreateConfirmedEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmed_events do |t|
      t.integer :event_id
      t.string :venue_name
      t.string :artist_name
      t.string :description
      t.string :date
      t.timestamps
    end
  end
end
