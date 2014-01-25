require 'eigenclass'
require 'card/types/card_subtypes'
require 'card/types/card_types'
require 'card/mana_cost'
require 'card/card_description'
require 'card/power_toughness'
require 'card/creature_attributes'
require 'card/power_toughness'
require 'card/card'

collection = Dir[File.dirname(__FILE__) + '/card_collection/*.rb']
collection.each do |file| 
  require file
end
