module ComicVine
  class Resource
    include ROXML
    xml_accessor :aliases
    xml_accessor :api_detail_url
    xml_accessor :last_modified, :from => "data_last_updated"
    xml_accessor :deck
    xml_accessor :descripition
    xml_accessor :id
    xml_accessor :image, :as => Image
    xml_accessor :site_detail_url

    def Resource.load_xml resource, id
      connector = Connector.new resource
      xml = connector.find_by_id id
      xml.xpath("//results").first
    end
  end
end