class RemoveFaqIdFromTags < ActiveRecord::Migration
  def up
    remove_column :tags, :faq_id
  end

  def down
    add_column :tags, :faq_id, :integer
  end
end
