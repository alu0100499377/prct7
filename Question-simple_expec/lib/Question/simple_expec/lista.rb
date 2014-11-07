Node = Struct.new(:value, :next)
class Lista

	attr_reader :head

	def initialize(val)	
		@head = Node.new(val)
	end

	def pop()
		aux = @head
		@head = @head.next
		return aux.value
	end

	def push(val)
		aux = @head
		while (aux.next != nil) do
			aux = aux.next
		end
		aux.next = Node.new(val,nil)
	end

	def mulpush(val)
                val.each do |x| 
                push(x)
                end
        end

	def pushbefore(value)
                if(@head != nil)
                        newnodo = Node.new(value, @head, @head.prev)
			@head = newnodo
                else
                        @head = Node.new(value, nil, nil)
                end

	end

	def mulpushbefore(val)
                val.each do |x| 
                pushbefore(x)
                end
        end

end

