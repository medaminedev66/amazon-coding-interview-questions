require_relative 'linked_list.rb'

def merge_two_sorted_lists first, second
  if !first.head
    return second
  elsif !second.head
    return first
  end

  list = LinkedList.new

  if (first.head.value < second.head.value)
    list.head = first.head
    first.head = first.head.next
  else
    list.head = second.head
    second.head = second.head.next
  end

  list.tail = list.head

  while first.head && second.head
    temp = nil
    if first.head.value < second.head.value
      temp = first.head
      first.head = first.head.next
    else
      temp = second.head
      second.head = second.head.next
    end

    list.tail.next = temp
    list.tail = temp
  end

  if first.head
    list.tail.next = first.head
  else
    list.tail.next = second.tail
  end

  return list
end

list_1 = LinkedList.new
list_1.add 4
list_1.add 8
list_1.add 15
list_1.add 19

list_2 = LinkedList.new
list_2.add 7
list_2.add 9
list_2.add 16
list_2.add 18

merge_two_sorted_lists(list_1, list_2).print
