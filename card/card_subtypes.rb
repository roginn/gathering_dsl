module CardSubtypes

  attr_accessor :subtypes

  def full_subtype_names
    # apply reverse method to get the type name as described in the class
    @subtypes.map { |x| x.capitalize }.join(' ')
  end  

end