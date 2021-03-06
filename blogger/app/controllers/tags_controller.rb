class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		name = @tag.name
		@tag.destroy
		flash.notice = "Tag #{name} destroyed!"
		redirect_to tags_path
	end
end
