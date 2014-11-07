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

	def to_s
		auxiliar = "#{@head.value.to_s}"
		aux = @head
		while(aux.next != nil)
			aux = aux.next
			auxiliar += " "
			auxiliar += "#{aux.value.to_s }"
		end			
		auxiliar
	end

    def imprinver
		aux = @head
		while(aux.next != nil)
			aux = aux.next     
		end
		salida = "#{aux.value.to_s}"
		while(aux.prev != nil)
		    aux = aux.prev
		    salida += " "
		    salida += "#{aux.value.to_s}"
		end
		salida
    end

end

