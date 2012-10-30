class Question < ActiveRecord::Base

  #### Relations ####
  belongs_to :category


  #### Accessors ####
  attr_accessible :answer, :question

end
