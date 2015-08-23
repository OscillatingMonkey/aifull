class AddVisualColumnsToEntryImages < ActiveRecord::Migration
	def up
		add_attachment :entry_images, :visual
	end

	def down
		remove_attachment :entry_images, :visual
	end

end
