module ComicVine
	class Issue < Resource
		include ROXML
		xml_accessor :characters, :from => "character", :as => [Item], :in => "character_credits"
		xml_accessor :died_in, :from => "character", :as => [Item], :in => "characters_died_in"
		xml_accessor :issue_number
		xml_accessor :name
		xml_accessor :objects, :from => "object", :as => [Item], :in => "object_credits"
		xml_accessor :publish_day
		xml_accessor :publish_month
		xml_accessor :publish_year		
		#TODO: person_credits
		xml_accessor :story_arc, :from => "story_arc", :as => [Item], :in => "story_arc_credits"
		xml_accessor :teams, :from => "team", :as => [Item], :in => "team_credits"		
		xml_accessor :volume, :as => Item
		
		def Issue.load id
			Issue.from_xml Resource.load_xml("story_arc", id)
		end		
	end
end