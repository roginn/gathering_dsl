#!/usr/bin/env ruby
lib = File.expand_path '..', __FILE__
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'loader'

# x = DeadlyRecluse.new
# puts "Flying? #{x.flying?}"
# puts "Reach? #{x.reach?}"

# DeadlyRecluse.print_info
# HalimarExcavator.print_info
# ZodiacDragon.print_info

# cards = ObjectSpace.each_object(Class).select { |x| x.superclass == Card }
cards = ObjectSpace.each_object(Class).select { |klass| klass < Card }

cards.each { |c| c.print_info }
