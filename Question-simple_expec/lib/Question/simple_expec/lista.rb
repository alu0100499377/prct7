Node = Struct.new(:value, :next, :prev)
class Lista

	attr_reader :head
	attr_reader :tail

	def initialize(val)	
		@head = Node.new(val)
		@tail = Node.new(val)
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
		aux.prev = aux.next
		aux.next = Node.new(val,nil)
		@tail = aux.next
	end

	def adelante()
		aux = @head
		while (aux.next != nil) do
			aux = aux.next
		end
	end

	def atras()
		aux = @tail
		while (aux.prev != nil) do
			aux = aux.prev
		end
	end
	
end
