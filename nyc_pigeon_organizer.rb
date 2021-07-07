def nyc_pigeon_organizer(data)
  result ={}
  
  data.each do |color_gender_lives, value|
    value.each do |stat, names|
      names.each do |name|
        
        if !result[name]
          result[name] = {}
        end
        
        if !result[name][color_gender_lives]
          result[name][color_gender_lives] = []
        end
    
    result[name][color_gender_lives] << stat.to_s
    
      end
    end
  end
  
  result
end
