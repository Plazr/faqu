class Tagging < ActiveRecord::Base
  attr_accessible :faq_id, :tag_id
  belongs_to :tag
  belongs_to :faq
end
