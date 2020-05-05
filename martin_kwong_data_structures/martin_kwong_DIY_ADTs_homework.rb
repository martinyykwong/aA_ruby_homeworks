#abstract data types homework

class Stack

    def initialize
        @stack = []
    end

    def push(ele) #adds new element to top of stack
        @stack = @stack + [ele]
    end

    def pop #removes top element from stack
        removed_ele = @stack[-1]
        @stack = @stack[0...-1]
        removed_ele
    end

    def peek #returns the top element in stack
        @stack[-1]
    end

end

class Queue

    def initialize
        @queue = []
    end

    def enqueue(ele)
        @queue = @queue + [ele]
    end

    def dequeue
        removed_ele = @queue[0]
        if @queue.length > 0
            @queue = @queue[1..-1]
        end
        removed_ele
    end

    def peek
        @queue[0]
    end

end

class Map #using arrays for each key-value pair. no hash map

    def initialize
        @map = []
    end

    def set(key,value) #either create a new key-value pair or update value for a pre-existing key
        @map.each_with_index do |existing_pair, i|
            if existing_pair[0] == key
                return @map[i][1] = value
            end
        end
        @map = @map + [[key, value]]
    end

    def get(key)
    end

    def delete(key)
    end

    def show
    end

end