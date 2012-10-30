class Question < ActiveRecord::Base

  #### Relations ####
  has_many :category_questions
  has_many :categories, through: :category_questions


  #### Accessors ####
  attr_accessible :answer, :question

end
