module ComicVine
  class Connector
    def Connector.api_key=(value)
      @@api_key = value
    end
    
    attr_accessor :host, :resource

    def initialize resource
      @host = "api.comicvine.com"
      @resource = resource
    end

    def url options={}
      query = ""
      options.each { |k,v| query += "#{k}=#{v}&" }
      "http://#{@host}/#{@resource}/?api_key=#{@@api_key}&format=xml&" + query
    end

    def id_url id, options={}
      query = ""
      options.each { |k,v| query += "#{k}=#{v}&" }
      "http://#{@host}/#{@resource}/#{id}/?api_key=#{@@api_key}&format=xml&" + query
    end

    def find_by_id id, options={}
      url = id_url id, options
      puts url
      xml = connect_and_parse url
      xml
    end

    def list options={}
      url = url options
      xml = connect_and_parse url
      xml
    end

    def connect_and_parse url
      file = connect url
      parse file
    end

    def parse file
      Nokogiri::XML(file)
    end

    def connect url
      open(url,"User-Agent" => "Ruby/#{RUBY_VERSION}")
    end
  end
end
