require "pry"

def nyc_pigeon_organizer(data)
  hash = {} # 7 keys 
  data.each do |data_type, info|
    info.each do |type, array|
      array.each do |name|
        if !hash.has_key?(name)
          hash[name] = {}
          # hash[name][data_type] << type.to_s
        # else 
        #   hash[name] = {data_type => [type]}
        end 
        if !hash[name][data_type]
          hash[name][data_type] = []
          
        end 
        hash[name][data_type] << type.to_s
      end 
    end 
  end 
  # binding.pry
  # data = { 
  #       :color => {
  #         :purple => ["Theo", "Peter Jr.", "Lucky"],
  #         :grey => ["Theo", "Peter Jr.", "Ms. K"],
  #         :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
  #         :brown => ["Queenie", "Alex"]
  #       },
  #       :gender => {
  #         :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
  #         :female => ["Queenie", "Ms. K"]
  #       },
  #       :lives => {
  #         "Subway" => ["Theo", "Queenie"],
  #         "Central Park" => ["Alex", "Ms. K", "Lucky"],
  #         "Library" => ["Peter Jr."],
  #         "City Hall" => ["Andrew"]
  #       }
  #     }
      
    
    # names = ["Theo", "Peter Jr.", "Lucky", "Ms. K", "Queenie", "Andrew", "Alex"]
    
#     names.each do |name| 
    
#     i = 0 
#     while i < data.length do 
#       data_class = data[i]
#       binding.pry 
      
#       j = 0 
#       while j < data_class.length do 
#         data_line = data_class[j]
          
#         data_line.each do |key, value| # value is array of names 
#           if value.include?(name)
#             if hash[name] = nil 
#               hash[name] = key
#             else 
#               hash[name] << key
#             end 
#           end 
#         end 
          
#         j += 1 
#       end 
      
#     i += 1 
#   end 
# end 
                              
 
    
    
return  hash     
end

