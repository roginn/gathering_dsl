module CardDescription

  # creates a singleton method 'name' to be used in the card description
  # which sets the variable whenever parameters are given, or just returns
  # it otherwise
  def add_attr_macro(*variables)
    variables.each do |variable|
      self.eigenclass.send(:define_method, variable) do |*args|
        if args.empty?
          instance_variable_get('@' + variable.to_s)
        else
          set_args = args.size > 1 ? args : args[0]
          instance_variable_set('@' + variable.to_s, set_args)
        end
      end
    end
  end


  # similar to add_attr_macro, but passes a specific setter to operate more
  # complex operations than just variable attribution
  # def attr_macro_with_setter(variable, &block)
  #   self.eigenclass.send(:define_method, variable) do |*args|
  #     if args.empty?
  #       instance_variable_get('@' + variable.to_s)
  #     else
  #       block.call args
  #     end
  #   end
  # end  

end