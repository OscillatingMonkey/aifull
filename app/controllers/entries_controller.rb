class EntriesController < ApplicationController

	def new
		@entry = Entry.new :user_id => current_user.id
	end

	def create
		@entry = Entry.new :user_id => current_user.id
		@entry.save permitted_params
	end

	private

	def new_entry_params
		params.require(:entry).permit(:name, :description)	
	end

end
