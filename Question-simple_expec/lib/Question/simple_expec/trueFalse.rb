require_relative "pregunta"

class  TrueFalse < Pregunta

	attr_accessor :truefalses

	def initialize(enun)
		super(enun)
		@truefalses = ['a) Cierto','b) Falso']
	end

	def to_s
		cadena ="#{@enun}\n"
		@truefalses.each {|m| cadena += "#{m}\n"}
		cadena
        end	
end
