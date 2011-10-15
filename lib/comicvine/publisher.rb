module ComicVine
	class Publisher
		include ROXML
		xml_accessor :id
		xml_accessor :name
	end
end