require 'pry'

def nyc_pigeon_organizer(data)
  organizer={}
  names=data.values[0].values.flatten.uniq
  count=0
  while count<names.length do
    organizer[names[count]]={}
    count+=1
  end
  attributes=data.keys
  count=0
  while count<names.length do
    inner_count=0
    while inner_count<attributes.length do
      organizer[names[count]][attributes[inner_count]]=[]
      inner_count+=1
    end
    count+=1
  end
  count=0
  while count<names.length do
    inner_count=0
    while inner_count<attributes.length do
      data.values[inner_count].each do |key, value|
        if value.include?(names[count])
          organizer[names[count]][attributes[inner_count]]<<key.to_s
        end
      end
      inner_count+=1
    end
    count+=1
  end
  organizer
end
