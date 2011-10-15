module ComicVine
	class Character < Resource
		xml_accessor :birth
		xml_accessor :enemies, :from => "character", :as => [Item], :in => "character_enemies"
		xml_accessor :friends, :from => "character", :as => [Item], :in => "character_friends"
		xml_accessor :count, :from => "count_of_issue_appearances"
		xml_accessor :creators, :from => "person", :as => [Item], :in  => "creators"
		xml_accessor :first, :from => "first_appeared_in_issue", :as => IssueItem
		xml_accessor :gender #TODO 2?
		xml_accessor :issues, :from => "issue", :as => [Item], :in => "issue_credits"
		xml_accessor :died_in, :from => "issue", :as => [Item], :in => "issues_died_in"
		xml_accessor :last_name
		xml_accessor :movies, :from => "movie", :as => [Item], :in => "movies"		
		xml_accessor :name		
		xml_accessor :origin, :as => Item
		xml_accessor :powers, :from => "power", :as => [Item], :in => "powers"		
		xml_accessor :publisher, :as => Publisher
		xml_accessor :real_name
		xml_accessor :story_arcs, :from => "story_arc", :as => [Item], :in => "story_arc_credits"
		xml_accessor :team_enemies, :from => "team", :as => [Item], :in => "team_enemies"
		xml_accessor :team_friends, :from => "team", :as => [Item], :in => "team_friends"
		xml_accessor :teams, :from => "team", :as => [Item], :in => "teams"
		xml_accessor :volumes, :from => "volume", :as => [Item], :in => "volume_credits"
		
		def Character.load id
			Character.from_xml Resource.load_xml("character", id)
		end		
	end
end