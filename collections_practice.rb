# your code goes here
def begins_with_r(tools)
  tools.all? {|word| word.downcase.start_with?("r")}
end

def contain_a(elements)
  elements.select {|n| n.downcase.include?("a")}
end

def first_wa(element)
  element.find {|n| n.to_s.start_with?("wa")}
end

def remove_non_strings(arr)
  arr.reject {|item| item.class != String}
end

def count_elements(arr)
  multiples = []
  arr.uniq.each_with_index do |item, index|
      multiples << arr[index+1].merge(Hash[:count, arr.count(item)])
  end
  multiples
end

def merge_data(key, value)
  keys.each do |hashes|
    value.each do |new_hash|
      hashes.merge!(new_hash[hashes[:first_name]])
    end
  end
end

def find_cool(arr)
  arr.select {|thing| thing if thing.has_value? "cool"}
end

def organize_schools(arg)
  new_hash = {}
  schools.each do |school_name, locations|
    locations.each do |location, location_value|
      if new_hash[location_value] == nil
        new_hash[location_value] = [school_name]
      else
        new_hash[location_value] << school_name
      end
    end
  end
  new_hash
end
