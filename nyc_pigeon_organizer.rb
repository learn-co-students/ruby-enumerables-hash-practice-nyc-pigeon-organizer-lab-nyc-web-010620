require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  data[:gender][:male].each do |name| 
    new_hash[name] = {
      :color => [],
      :gender => ["male"],
      :lives => []
    }
  end
  data[:gender][:female].each do |name| 
    new_hash[name] = {
      :color => [],
      :gender => ["female"],
      :lives => []
    }
  end
  data[:lives].each do |location, names|
    names.each do |name|
    new_hash[name][:lives] << location
    end
  end
  data[:color].each do |color, names|
    names.each do |name|
      new_hash[name][:color] << color.to_s
    end
  end
  # binding.pry
return new_hash
end

