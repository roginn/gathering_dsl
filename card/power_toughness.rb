module PowerToughness

  attr_accessor :power, :toughness

  def pt(pt)
    @power     = pt[:power]
    @toughness = pt[:toughness]
  end

end

class Fixnum
  def /(other)
    {power: self, toughness: other}
  end
end