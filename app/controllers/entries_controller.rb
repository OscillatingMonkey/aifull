class EntriesController < ApplicationController
	respond_to :js, :html
	before_filter :authenticate_user!
	before_filter :find_entry, only: [:show]

	def new
		@entry = Entry.new :user_id => current_user.id
	end

	def create
		@entry = Entry.new permitted_params
		respond_with @entry, :location [:edit, @entry] if @entry.save permitted_params
	end

	def show
	end

	def edit
	end

	private

	def new_entry_params
		params.require(:entry).permit(:name, :description)	
	end

	def find_entry
		@entry = Entry.find_by_id param[:id]
	end
end
