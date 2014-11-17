class Practice
	def method_missing(method_name)
		puts "It's all good, the method '#{method_name}' doesn't exist but I've got your back!"
	end
end

practice = Practice.new
practice.practice