class NewsAdmin < ActiveRecord::Base
  attr_accessible :title, :content, :news_pictures_attributes
  has_many:news_pictures
  accepts_nested_attributes_for :news_pictures, :allow_destroy => true
end
