require('pry')
def nyc_pigeon_organizer(pigeon_data)
  new = Hash.new
  pigeon_data.each do |key, sub_hash|
    sub_hash.each do |sub_key, names|
      names.each do |name|
        if !!new[name] == false
            # if the key is not yet in the Hash
            new[name] = {
              :color => [],
              :gender => [],
              :lives => []
            }
            
        end
      end
    end
  end 
  pigeon_data.each do |keyy, value| 
    value.each do |color_hash_key, name_on_color|
      name_on_color.each do |individual_name_on_color|
        # check the name
        binding.pry
        new[individual_name_on_color][color_hash_key].push(color_hash_key.to_s)
      end
    end
  end
  new
end 




 


