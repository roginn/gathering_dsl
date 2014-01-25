module CreatureAttributes

  attr_accessor :attributes

  EVERGREEN = [
    :deathtouch, :defender, :first_strike, :double_strike, 
    :enchant, :equip, :flash, :flying, :haste, :hexproof, 
    :indestructible, :intimidate, :landwalk, :lifelink, 
    :protection, :reach, :shroud, :trample, :vigilance
  ]

  EVERGREEN.each do |attr|
    define_method(attr) do
      @attributes ||= []
      @attributes << attr
    end
  end

end

# module CreatureAttributesInstanceMethods

#   CreatureAttributesMacros::EVERGREEN.each do |attr|
#     define_method(attr.to_s + '?') do
#       self.class.attributes.include? attr
#     end
#   end  
  
# end