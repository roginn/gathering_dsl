module CardSubtypes

  attr_accessor :subtypes

  def full_subtype_names
    @subtypes.map { |x| x.capitalize }.join(' ')
  end  

end