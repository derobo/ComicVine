module ComicVine
	class StoryArc < Resource
		xml_accessor :count, :from => "count_of_issue-appearances"
		xml_accessor :first, :from => "first_appeared_in_issue", :as => Issue
		#xml_accessor :issues
		xml_accessor :publisher, :as => Publisher
	end
end