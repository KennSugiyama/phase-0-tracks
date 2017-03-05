# input
# arr = [42,89,23,1]
# number = 1

# integer to search for

# go through the integers in the array
# if the integer matches the searchInteger, then return the array index


def search_array (arr, search)
	arr.each do |num|
		if num == search
			return search
		else
			return nil
		end
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)