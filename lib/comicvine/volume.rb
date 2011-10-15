module ComicVine
	class Volume < Resource
		xml_accessor :count, :from => "count_of_issues"
		xml_accessor :characters, :from => "character", :as => [Item], :in => "character_credits"
		xml_accessor :concepts, :from => "concept", :as => [Item], :in => "concept_credits"
		xml_accessor :first_issue
		xml_accessor :issues, :from => "issue", :as => [IssueItem], :in => "issues"
		xml_accessor :last_issue
		xml_accessor :locations, :from => "location", :as => [Item], :in => "location_credits"
		xml_accessor :name
		xml_accessor :objects, :from => "object", :as => [Item], :in => "object_credits"
		xml_accessor :persons, :from => "person", :as => [Item], :in => "person_credits"
		xml_accessor :publisher, :as => Publisher		
		xml_accessor :teams, :from => "team", :as => [Item], :in => "team_credits"
				
		def Volume.load id
			Volume.from_xml Resource.load_xml("volume", id)
		end
	end
end