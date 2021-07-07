def nyc_pigeon_organizer(data)
  pigeons_of_nyc = {}
  data.each do |key,value|

    value.each do |quality, list|
      list.each do |name|
        pigeons_of_nyc[name] = {} if nil == pigeons_of_nyc[name]
        pigeons_of_nyc[name][key] = [] if nil == pigeons_of_nyc[name][key]
        pigeons_of_nyc[name][key].push(quality.to_s)
      end
    end

  end
  pigeons_of_nyc
end
