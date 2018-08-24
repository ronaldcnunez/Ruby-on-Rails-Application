class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :description
      t.string :date
      t.integer :artist_id
      t.integer :venue_id
      t.timestamps
    end
  end
end
