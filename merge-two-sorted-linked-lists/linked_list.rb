require_relative 'node.rb'

# class LinkedList
#   def initialize
#     @head = nil
#   end

#   def append(value)
#     if @head
#       find_tail.next = Node.new(value)
#     else
#       @head = Node.new(value)
#     end
#   end

#   def find_tail
#     node = @head
#     return node if !node.next

#     return node if !node.next while (node = node.next)
#   end

#   def append_after(target, value)
#     node           = find(target)
#     return unless node

#     old_next       = node.next
#     node.next      = Node.new(value)
#     node.next.next = old_next
#   end

#   def find(value)
#     node = @head
#     return false if !node.next
#     return node  if node.value == value

#     while (node = node.next)
#       return node if node.value == value
#     end
#   end

#   def delete(value)
#     if @head.value == value
#       @head = @head.next
#       return
#     end
#     node      = find_before(value)
#     node.next = node.next.next
#   end

#   def find_before(value)
#     node = @head
#     return false if !node.next
#     return node  if node.next.value == value

#     while (node = node.next)
#       return node if node.next && node.next.value == value
#     end
#   end

#   def print
#     node = @head
#     puts node
#     while (node = node.next)
#       puts node
#     end
#   end
# end

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    node = Node.new(number)
    if !@head && !@tail
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end

  def add_at idx, number
    return if idx > 0 && idx > @size

    @head = Node.new number if idx == 0
    node = Node.new number
    prev = Node.new
    curr = @head
    count = 0
    while count < idx
      prev = curr
      curr = curr.next
      count += 1
    end

    node.next = curr
    prev.next = node
    @size += 1
  end

  def remove index
    current = @head
    prev = Node.new
    count = 0
    while count < index
      prev = current
      current = current.next
      count += 1
    end
    prev.next = current.next
    size -= 1
  end

  def get index
    node = @head
    count = 0
    while (node)
      return node if count == index

      count += 1
      node = node.next
    end
    return nil
  end

  def print
    node = @head
    puts node
    node = node.next
    while (node)
      puts node
      node = node.next
    end
  end
end

# ll = LinkedList.new

# ll.add 5
# ll.add 6
# ll.add 7

# p ll

# def add head, node
#   if !head
#     head = node
#     head.next = nil
#   elsif !tail
#       tail = node
#       tail.next = nil
#     else
#       tail.next = node
#       tail.next.next = nil
