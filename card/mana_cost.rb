module ManaCost
  # C: colorless
  # W: white
  # U: blue
  # B: black
  # R: red
  # G: green
  MANA_TYPES = [:C, :W, :U, :B, :R, :G]

  def mana_cost(*args)
    unless args.empty?
      @mana_cost ||= {}
      args.each do |arg|
        if arg.is_a? Fixnum
          @mana_cost[:C] = arg
          # puts "adding #{arg} colorless manas"
        elsif arg.is_a? Symbol
          @mana_cost[arg] ||= 0
          @mana_cost[arg] += 1
          # puts "adding 1 #{arg} mana"
        else
          throw 'Mana type not recognized'
        end
      end
    end
    @mana_cost
  end
end