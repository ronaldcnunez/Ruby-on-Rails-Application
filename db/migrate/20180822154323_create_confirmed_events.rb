class CreateConfirmedEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmed_events do |t|
      t.integer :events_id

      t.timestamps
    end
  end
end
