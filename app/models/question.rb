class Question < ActiveRecord::Base

  #### Relations ####
  belongs_to :category


  #### Accessors ####
  attr_accessible :answer, :question,:category_id

def self.search(search)
	
  if search && search!="All"
  	find(:all,:conditions => ['category_id = ?', search])
	else
		find(:all)
	end

end

end
