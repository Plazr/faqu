class CategoryQuestion < ActiveRecord::Base

  #### Relations ####
  belongs_to :category
  belongs_to :question


  #### Accessors ####
  attr_accessible :category_id, :question_id

end
