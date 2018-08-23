class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description, default: "enter description"
      t.string :email
      t.string :genre, default: "enter genre"
      t.string :img_url, default: "https://thumbs.dreamstime.com/b/silhouette-rock-band-9219259.jpg"
      t.string :password_digest
      t.timestamps
    end
  end
end
