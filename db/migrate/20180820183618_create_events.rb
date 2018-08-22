class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :artist_id
      t.integer :venue_id
      t.text :description
      t.string :date
      t.timestamps
    end
  end
end
