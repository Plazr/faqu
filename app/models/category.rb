class Category < ActiveRecord::Base
  
  #### Relations ####
  has_many :category_questions
  has_many :questions, through: :category_questions


  #### Accessors ####
  attr_accessible :description

end
