class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
