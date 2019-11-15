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

def get_japanese_emoticon (file, emoticon)
  emoticon_library = load_library (file)
  japanese_emoticon = emoticon_library["get_emoticon"][emoticon]
  if japanese_emoticon == nil
    sorry_message
  else
    japanese_emoticon
  end
end

def get_english_meaning
  # code goes here
end