class Card

  extend ManaCost
  extend CardDescription
  extend CardTypes
  extend PowerToughness
  extend CreatureAttributes

  add_attr_macro :flavor, :name, :text

  class << self

    def print_info
      complete_type = self.full_type_name
      complete_type += " - #{self.full_subtype_names}" unless self.subtypes.empty?

      puts "Name: #{self.name}"
      puts "#{complete_type}"
      puts "Mana cost: #{self.mana_cost}"
      puts "Attributes: #{self.attributes.join(', ')}" if self.attributes
      puts "Power: #{self.power}"                      if self.power
      puts "Toughness: #{self.toughness}"              if self.toughness
      puts "#{self.text}"                              if self.text
      puts "\"#{self.flavor}\""                        if self.flavor
      puts "\n"
    end
  end

end