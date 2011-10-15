module ComicVine
	class Issue < Resource
		include ROXML
		#xml_accessor :characters, :from => "character_credits", :as => [Character], :in => "character"
		#xml_accessor :characters_died_in, :as => [Character], :in => "character"
		xml_accessor :issue_number
		xml_accessor :name
		xml_accessor :publish_day
		xml_accessor :publish_month
		xml_accessor :publish_year
		#xml_accesoor :story_arc, :from => "story_arc_credits", :as => StoryArc
		#xml_accessor :volume, :as => Volume		
	end
end