class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.string :email
      t.string :genre
      t.string :img_url
      t.string :password_digest
      t.timestamps
    end
  end
end
