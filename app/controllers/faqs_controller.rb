class FaqsController < ApplicationController

	def index
		@faqs = Faq.all
	end

	def new
		@faq = Faq.new
	end

	def create
		@faq = Faq.create params[:faq]

		flash[:message] = "The FAQ topic was successfully created"

		redirect_to faq_path @faq
	end

	def show
		@faq = Faq.find params[:id]
	end

	def edit
		@faq = Faq.find params[:id]
	end

	def update
		@faq = Faq.find params[:id]
		@faq.update_attributes params[:faq]

		flash[:message] = "The FAQ topic was successfully edited"

		redirect_to faq_path @faq
	end

	def destroy
		@faq = Faq.find params[:id]

		@faq.delete

		flash[:message] = "The FAQ topic was successfully deleted"

		redirect_to faqs_path
	end
end
