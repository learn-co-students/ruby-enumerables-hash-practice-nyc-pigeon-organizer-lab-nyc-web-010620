def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key, value|   #key:color,gender,lives #value:hash
  value.each do |describe, array| #describe:purple, male, subway
  array.each do |name| #name:index inside array

  #check if the empty hash has name inside 
  if pigeon_list.has_key?(name)

  #check if the value of name key has key(color,gender,lives)
   if pigeon_list[name].has_key?(key)

  #if name has key already, add the describe value at the current iteration
  pigeon_list[name][key] << describe.to_s

  #if name has no key at the current iteration yet, set the new hash
  else
    pigeon_list[name][key] = [describe.to_s]
end
else
  pigeon_list[name] = {key => [describe.to_s]} #describe was symbol before so turn it to String
      end
     end
    end
  end
  pigeon_list
end