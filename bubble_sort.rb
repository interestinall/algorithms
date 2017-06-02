def bubble_sort(array)

  sorted = true

  (array.length-1).times do |index|
    if array[index] > array[index+1]
      array[index], array[index+1] = array[index+1], array[index]
      sorted = false
    end
  end

  sorted ? array : bubble_sort(array)

end

# to create some test input quickly
#array = 1000.times.map{  Random.rand(1000) }
