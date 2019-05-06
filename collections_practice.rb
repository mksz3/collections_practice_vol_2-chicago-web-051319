def begins_with_r(arr)
  arr.all? { |item| item[0].downcase == 'r' }
end

def contain_a(arr)
  arr.select { |item| item.downcase.include?('a') }
end

def first_wa(arr) 
  arr.find { |item| item[0].downcase == 'w' && item[1].downcase == 'a' }
end

def remove_non_strings(arr) 
  strs = []
  arr.each { |item| 
    if item.instance_of? String
    strs << item
  end
  }
  strs
end

def count_elements(arr) 
  counts = Hash.new(0)
  arr.map {|element| counts[element] += 1 }
    counts.map { |hash, count| hash[:count] = count }
  return counts.keys
end

def merge_data(d1, d2) 
  d1[0].merge(d2[0])
end