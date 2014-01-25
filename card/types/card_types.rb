module CardTypes
  
  include CardSubtypes

  TYPES = [
    :artifact, :creature, :enchantment, :instant, :land, :phenomenon, :plane,
    :planeswalker, :scheme, :sorcery, :tribal, :vanguard
  ]

  TYPES.each do |type|
    define_method(type) do |*args|
      # puts "#{self} calling type #{type} with args #{args.inspect}"
      @subtypes ||= []
      @types    ||= []
      @types << type.to_sym
      args.each { |subtype| @subtypes << subtype unless subtype.nil? }
      nil
    end

    define_method(type.to_s + '?') do |arg|
      @types.include? arg
    end
  end

  def full_type_name
    # apply reverse method to get the type name as described in the class
    @types.reverse.map { |x| x.capitalize }.join(' ')
  end

end