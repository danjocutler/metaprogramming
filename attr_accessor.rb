class Access

	def var(method_name)
		inst_var_name = "@#{method_name}".to_sym
		define_method method_name do
			instance_variable_get inst_var_name
		end
		define_method "#{method_name}=" do |new_value| 
			instance_variable_set inst_var_name, new_value
		end
	end
	
end