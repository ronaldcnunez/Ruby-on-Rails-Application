class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :artist_id
      t.integer :venue_id
      t.string :date
      t.boolean :verified

      t.timestamps
    end
  end
end
