def nyc_pigeon_organizer(data)
new_data = {}
#each can be used as a psuedo reduction
data.each do |key, value|
  #p key
  #p value
  value.each do | new_values, names|
    #p new_values
    #p names
    names.each do |name|
      # looping to create keys/values if dne
      if !new_data[name]
        new_data[name] = {}
      end

      if !new_data[name][key]
        new_data[name][key] = []
      end

      new_data[name][key] << new_values.to_s
    end
  end
 end
new_data
end

#memo = accumulator, which can also be the initial value of the reduce such as {}

#first_reduction = data.reduce({}) do |memo, (key, value)|
#  memo = {
#    value => key
#  }
#end
