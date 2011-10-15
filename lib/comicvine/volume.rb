module ComicVine
	class Volume < Resource
		xml_accessor :count, :from => "count_of_issues"
		xml_accessor :first_issue
		xml_accessor :issues, :from => "issue", :as => [Issue], :in => "issues"
		xml_accessor :last_issue
		xml_accessor :name
		#TODO: person_credits?
		xml_accessor :publisher, :as => Publisher		
		#TODO :team_credits ?
		
		def Volume.load id
			Volume.from_xml Resource.load_xml("volume", id)
		end
	end
end