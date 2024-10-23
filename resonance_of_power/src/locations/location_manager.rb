def load_location_discripton(location)
  discriptions = {}

  File.foreach(location) do |line|
    key, value = line.chomp.split('=')
    discriptions[key.to_sym] = value
  end

  discriptions
end

def location_info(location)
  puts location[:tavern_description]
end