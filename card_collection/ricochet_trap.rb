class RicochetTrap < Card

  name 'Ricochet Trap'

  instant :trap

  mana_cost 3, :R

  text 'If an opponent cast a blue spell this turn, you may pay :R rather '    +
       'than pay Ricochet Trap\'s mana cost. Change the target of target '     +
       'spell with a single target.'

  flavor 'In his last seconds, Remhas regretted using his most powerful spell.'

end
