def nyc_pigeon_organizer(data)
    output = {}
  data.each do |data_point, hash|
      hash.each do |key, value|
        value.each do |item|
            if output.key?(item) && output[item].key?(data_point)
                output[item][data_point] << key.to_s
            elsif output.key?(item)
                output[item][data_point] = [key.to_s]
            else
               output[item] = {}
               output[item][data_point] = [key.to_s]
            end
         end
       end
      end
  output
end
