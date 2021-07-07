def pigeons_to_hash (hash)
arr = []
new_hash = {}
hash.each {|k, v| v.each {|k, v| arr << v}}
arr = arr.flatten.uniq
arr.map {|i| new_hash[i] = {}}
new_hash
end


def nyc_pigeon_organizer (hash)
new_hash = pigeons_to_hash(hash)
new_hash.each do |name,traits|
  hash.each do |key,value|
    value.each do |key2, value2|
      if (value2.include? name)
        if (traits[key])
          traits[key] << key2.to_s
          else 
          traits[key] = [key2.to_s]
        end
      end
    end
  end
end
new_hash
end