class EntryPermitter < ActionController::Permitter
	permit :name, :user_id, :description
end
