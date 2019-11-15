require 'yaml'

def load_library (file)
load_emoticon = YAML.load_file(file) 

emoticon_library = {}
emoticon_library["get_meaning"] = Hash.new
emoticon_library["get_emoticon"] = Hash.new

load_emoticon.each do |word, emoticons|
  emoticon_library["get_meaning"][emoticons[1]] = word 
  emoticon_library["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  emoticon_library
end

def get_japanese_emoticon (path, emoticon)
  load_library(path)["get_emoticon"].each_pair do |key, value| 
    if key == emoticon
      return value
    end
  end
   return "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
end