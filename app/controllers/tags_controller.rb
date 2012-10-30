class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.includes(:faqs).find params[:id]
	end

	def destroy
		@tag = Tag.includes(:faqs).find params[:id]

		@tag.faqs.each do |faq|
			faq.delete
		end

		@tag.destroy

		flash[:message] = "The topics were successfully deleted"

		redirect_to tags_path
	end
end
