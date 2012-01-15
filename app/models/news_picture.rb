class NewsPicture < ActiveRecord::Base
belongs_to:news_admin
has_attached_file :news_picture, :styles => { :large => "640*480", :medium => "300*300>", :thumb => "100*100"}
end
