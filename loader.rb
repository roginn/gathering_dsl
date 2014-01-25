#!/usr/bin/env ruby

require 'eigenclass'
require 'card/mana_cost'
require 'card/card_description'
require 'card/power_toughness'
require 'card/creature_attributes'
require 'card/card_subtypes'
require 'card/card_types'
require 'card/power_toughness'
require 'card/card'

Dir[File.dirname(__FILE__) + '/card_collection/*.rb'].each { |file| require file }
