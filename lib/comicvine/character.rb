module ComicVine
	class Character < Resource
		xml_accessor :birth
		xml_accessor :count, :from => "count_of_issue_appearances"
		xml_accessor :creator
		xml_accessor :first, :from => "first_appeared_in_issue", :as => Issue
		xml_accessor :gender #TODO 2?
		xml_accessor :issues, :from => "issue", :as => [Issue], :in => "issue_credits"
		xml_accessor :issues_died_in, :from => "issue", :as => [Issue], :in => "issues_died_in"
		xml_accessor :last_name
		xml_accessor :name
		xml_accessor :publisher, :as => Publisher
		xml_accessor :real_name
		#xml_accessor :volumes, :from => "volume", :as => [Volume], :in => "volume_credits"
		
		def Character.load id
			Character.from_xml Resource.load_xml("character", id)
		end		
	end
end