class Duck

	def method_missing(name, *args, &block)
		puts "This method hasn't really broken"
		puts args.to_s
		block.call
		puts "it's ok #{name} is the method you called"
	end

	def define_method

	end

end

duck = Duck.new
duck.quack(2){puts "quack"}
# duck.kill
# duck.to_s
