class Category < ActiveRecord::Base
  
  #### Relations ####
  has_many :questions


  #### Accessors ####
  attr_accessible :description

end
