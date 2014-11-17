class Student

	attr_accessor :badges

	def initialize
		@badges = []
	end

	def method_missing(name)
    if name =~ /^has_(.+?)\?/
      self.class.send(:define_method, name) {@badges.include?($1.to_sym) ? true : false}
      self.send(name)
    else
      super
    end
  end
  
	# def award(badge)
	# 	@badges << badge
	# end

	# def respond_to?(name)
	#  	name =~ /^has_.+?\?/ ? true : super
	# end

end

# s = Student.new
# s.award(unixoid)
# s.has_unixoid?