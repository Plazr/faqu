class CategoryQuestion < ActiveRecord::Base
  attr_accessible :category_id, :question_id

	belongs_to :category
	belongs_to :question
end
