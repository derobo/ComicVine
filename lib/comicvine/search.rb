module ComicVine
  class Search
    attr_accessor :limit, :offset
    
    def initialize
      @connector = Connector.new "search"
      @resource = []
      @limit = 20
      @offset = 0
    end

    def <<(resource)
      @resource << resource.to_s
    end

    def query(string)
      options = {"query" => string, "limit" => @limit, "offset" => @offset }
      options["resources"] = @resource.join(",") if @resource.size > 0
      @result = @connector.list(options).xpath('//results')
      @result.children.map do |child|
        case child.xpath("resource_type").children.first.text
        when "volume"
          Volume.from_xml(child)
        else
          puts child.xpath("resource_type").children.first.text
        end
      end
    end
  end
end
