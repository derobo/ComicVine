module ComicVine
	class Item
		include ROXML
		xml_accessor :api_detail_url
		xml_accessor :id
		xml_accessor :name
		xml_accessor :site_detail_url
		xml_accessor :type, :from => :name

		def full
			xml = Resource.load_xml(self.type, self.id)
			case self.type
			when "issue"
				Issue.from_xml xml
			when "volume"
				Volume.from_xml xml
			when "character"
				Character.from_xml xml
			when "story_arc"
				StoryArc.from_xml xml
			else
				puts self.type + " is not supported for item!"
			end
		end
	end

	class IssueItem < Item
		xml_accessor :issue_number
	end
end