def insertion_sort(array)
  final = []

  # Keep the pivot so we can put it back at the end. We are returning a sorted array, but not changing
  # the original input

  pivot = array.shift

  final << pivot

  array.each do |value|
    f_index = 0
    loop do
      if value <= final[f_index]
        final.insert(f_index, value)
        break
      elsif f_index == final.length - 1
        final.insert(f_index + 1, value)
        break
      end
      f_index += 1
    end
 
  end
  
  # Put the pivot back in its place
  array.unshift(pivot)

  final

end

# to create some test input quickly
#array = 1000.times.map{  Random.rand(1000) }
