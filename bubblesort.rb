def bubble_sort (array)

  not_sorted = true
  while not_sorted

    not_sorted = false
    i=0

    while i < (array.length-1)
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        not_sorted = true
      end
      i = i + 1
    end
  end

  array

end
puts bubble_sort([4,3,78,2,0,2])


def bubble_sort_by(array, &bloc)
  not_sorted = true
  while not_sorted

    not_sorted = false
    i=0

    while i < (array.length-1)
      if bloc.call(array[i], array[i+1]) > 0
        array[i], array[i+1] = array[i+1], array[i]
        not_sorted = true
      end
      i = i + 1
    end
  end

  array
end

puts bubble_sort_by(["hi","hello","hey"]){|left, right| left.length - right.length}
