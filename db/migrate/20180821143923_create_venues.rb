class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :email
      t.text :description, "describe your venue"
      t.string :location, default: "somewhere"
      t.string :img_url, default: "https://mediaassets.10news.com/photo/2018/08/14/Screen%20Shot%202018-08-14%20at%204.28.24%20PM_1534289320974.png_94946240_ver1.0_320_240.jpg"
      t.string :password_digest
      t.timestamps
    end
  end
end
