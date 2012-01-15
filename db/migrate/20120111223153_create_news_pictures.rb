class CreateNewsPictures < ActiveRecord::Migration
  def change
    create_table :news_pictures do |t|
      t.string :news_picture_file_name
      t.string :news_picture_content_type
      t.integer :news_picture_file_size
      t.datetime :news_picture_updated_at
      t.integer :news_admin_id

      t.timestamps
    end
  end
end
