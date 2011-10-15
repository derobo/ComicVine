module ComicVine
	class Image
		include ROXML
		xml_accessor :icon_url
		xml_accessor :medium_url
		xml_accessor :screen_url
		xml_accessor :small_url
		xml_accessor :super_url
		xml_accessor :thumb_url
		xml_accessor :tiny_url
	end
end