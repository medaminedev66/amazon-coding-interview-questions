require_relative 'linked_list'

# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/MethodLength
def merge_two_sorted_lists(first, second)
  list = LinkedList.new

  return second unless first.head

  return first unless second.head

  if first.head.value < second.head.value
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

  list.tail.next = (first.head || second.tail)

  list
end

list1 = LinkedList.new
list1.add 4
list1.add 8
list1.add 15
list1.add 19

list2 = LinkedList.new
list2.add 7
list2.add 9
list2.add 16
list2.add 18

merge_two_sorted_lists(list_1, list_2).print
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/MethodLength
