def nyc_pigeon_organizer(data)
  # write your code here!
  result = new.Hash
  
  data.each do |pigeon, value|
    value.each do |details, names|
      names.each{ |name|
        if !(result.has_key?(name))
          result[name] = {}
        end
        
        if !(result[name].has_key?(details))
          result[name][details] = {}
        end
        
        if !(result[name][pigeon].include?(details))
          result[name][pigeon].push(details)
        end
      }
     end
    end
  return result
end
