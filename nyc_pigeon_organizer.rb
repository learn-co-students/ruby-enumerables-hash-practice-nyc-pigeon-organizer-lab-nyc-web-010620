require "pp"

def nyc_pigeon_organizer(data)
results = {}
    data.each do |color_gender_lives,value| 
        value.each do |stats, all_names|
            all_names.each do |name|
                if results[name] == nil 
                    results[name] = {}
                end 
                if results[name][color_gender_lives] == nil
                    results[name][color_gender_lives] = []
                end 
                results[name][color_gender_lives].push(stats.to_s)
            end 
        end 
    end
   results
end


