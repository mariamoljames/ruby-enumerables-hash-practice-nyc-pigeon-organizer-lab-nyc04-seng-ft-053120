require 'pry'

def nyc_pigeon_organizer(data)
  organizer={}
  names=data.values[0].values.flatten.uniq
  attributes=data.keys
  count=0
  while count<names.length do
    inner_count=0
    while inner_count<attributes.length do
      organizer[names[count]]<<attributes[inner_count]
      inner_count+=1
    end
    count+=1
  end
  binding.pry
  organizer
end
