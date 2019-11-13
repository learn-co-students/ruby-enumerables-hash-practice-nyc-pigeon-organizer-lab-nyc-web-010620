def nyc_pigeon_organizer(data)
  
newHash = {}

data.each do |key, value|
    value.each do |key2, value2|
      value2.map do |ele|
        
        if newHash[ele] == nil
          #create empty k v pair for name
          newHash[ele] = {}
        end

        if newHash[ele][key] == nil
          #create empty k v pair for attribute
          newHash[ele][key] = []
        end
          
          #push the new values into our new array
        newHash[ele][key].push(key2.to_s)

      end
      
    end
    
end

newHash
end
