def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |attribute, hash|
    hash.each do |attribute_value, array|
      array.each do |name|
        
        #If new_hash[name] does not exist, create it equaling to an empty hash
        if !new_hash[name]
          new_hash[name] = {}
        end

        #If new_hash[name][attribute] does not exist, create it equaling to an empty array
        if !new_hash[name][attribute]
          new_hash[name][attribute] = []
        end

        #Now that you have you have new_hash[name][attribute], you can shovel in the attribute_values
        new_hash[name][attribute] << attribute_value.to_s

      end
    end
  end
  new_hash
end

# #Solution 2:
# def nyc_pigeon_organizer(data)
#   new_hash = {}

#   data.each do |attribute, hash|
#     hash.each do |attribute_value, array|
#       array.each do |name|

#         if new_hash.has_key?(name)

#           if new_hash[name].has_key?(attribute)
#             new_hash[name][attribute] << attribute_value.to_s
#           else
#             new_hash[name][attribute] = [attribute_value.to_s]
#           end

#         else
#           new_hash[name] = {attribute => [attribute_value.to_s]}
#         end

#       end
#     end
#   end
#   new_hash
# end

# #Result should look like this:
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
