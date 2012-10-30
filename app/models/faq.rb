class Faq < ActiveRecord::Base
  attr_accessible :answer, :question, :tag_list
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
  	self.tags.join(", ")
  end

  def tag_list=(tags_string)
  	self.taggings.destroy_all

  	tag_names = tags_string.split(",").collect{|t| t.strip.downcase}.uniq

  	tag_names.each do |tag_name|
  		tag = Tag.find_or_create_by_name tag_name
  		tagging = self.taggings.new
  		tagging.tag_id = tag.id
  	end
  end

  def delete
    self.tags.each do |tag|
      if tag.taggings.count == 1
        tag.destroy
      end
    end
    self.destroy
  end
end
