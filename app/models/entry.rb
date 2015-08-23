class Entry < ActiveRecord::Base

	scope :for_tag_id, scope lambda { |tag_id| joins(:entry_tags).where("entry_tags.tag_id = ?", tag_id) } 

	belongs_to :user
	has_many :entry_tags
	has_many :tags, :through => :entry_tags


end
