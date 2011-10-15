require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'roxml'
require 'comicvine/image'
require 'comicvine/resource'
require 'comicvine/connector'
require 'comicvine/publisher'
require 'comicvine/search'
require 'comicvine/issue'
require 'comicvine/character'
#require 'comicvine/story_arc'
require 'comicvine/volume'


ComicVine::Connector.api_key = "0da061bf2dd352f6db1ec0229e665d3031a70c5d"
@s = ComicVine::Search.new
@s << ComicVine::Volume
@r = @s.query("iron")
@v = ComicVine::Volume.load 2407
@c = ComicVine::Character.load 59175
debugger
puts @c