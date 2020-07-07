require "pry"
def nyc_pigeon_organizer(data)
  
  data.each_with_object({}) do |(key , value) , final_array|
    binding.pry
    value.each do |inner_key , names|
      names.each do |names|
        if !final_array[names]
          final_array[names] = {}
        end
        
        if !final_array[names][key]
            final_array[names][key] = []
        end
        final_array[names][key].push(inner_key.to_s)
      end
    end   
  end

end



