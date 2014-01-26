module CardSupertypes
  
  SUPERTYPES = [
    :basic, :legendary, :ongoing, :snow, :world
  ]

  SUPERTYPES.each do |type|
    define_method(type) do |*args|
      @supertypes    ||= []
      @supertypes << type.to_sym
      # args.each { |subtype| @subtypes << subtype unless subtype.nil? }
      nil
    end

    define_method(type.to_s + '?') do |arg|
      @types.include? arg
    end
  end

  def full_supertype_name
    # apply reverse method to get the type name as described in the class
    @supertypes.reverse.map { |x| x.capitalize }.join(' ') if @supertypes
  end

end