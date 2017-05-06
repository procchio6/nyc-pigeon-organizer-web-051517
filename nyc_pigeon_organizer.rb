def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute_group, attribute_data|
    attribute_data.each do |attribute, pigeons|
      pigeons.each do |pigeon|
        pigeon_list[pigeon] ||= {}
        pigeon_list[pigeon][attribute_group] ||= []
        pigeon_list[pigeon][attribute_group] << attribute.to_s
      end
    end
  end
  pigeon_list
end
