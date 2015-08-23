class Tag < ActiveRecord::Base
	scope :for_entry_id, lambda {|entry_id| joins(:entry_tags).where("entry_tags.entry_id = ?", entry_id) }

	has_many :entry_tags
	has_many :entries, :through => :entry_tags

end
