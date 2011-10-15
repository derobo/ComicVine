module ComicVine
	class StoryArc < Resource
		xml_accessor :count, :from => "count_of_issue-appearances"
		xml_accessor :first, :from => "first_appeared_in_issue", :as => Issue
		xml_accessor :issues, :as => [Item], :in => "issue"
		xml_accessor :publisher, :as => Publisher

		def StoryArc.load id
			StoryArc.from_xml Resource.load_xml("story_arc", id)
		end	
	end
end