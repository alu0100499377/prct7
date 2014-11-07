class Pregunta
	attr_accessor :enun

	def initialize(enun)
		@enun = enun
	end


	def to_s
		cadena = "#{@enun}\n"
		cadena
	end

end
