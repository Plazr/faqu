class Question < ActiveRecord::Base
  attr_accessible :answer, :question

	has_many :category_questions
	has_many :categories, through: :category_questions
end
