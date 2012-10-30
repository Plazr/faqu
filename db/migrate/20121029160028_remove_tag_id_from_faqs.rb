class RemoveTagIdFromFaqs < ActiveRecord::Migration
  def up
    remove_column :faqs, :tag_id
  end

  def down
    add_column :faqs, :tag_id, :integer
  end
end
