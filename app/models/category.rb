class Category < ActiveRecord::Base
  attr_accessible :description
	
	has_many :category_questions
	has_many :questions, through: :category_questions
end
