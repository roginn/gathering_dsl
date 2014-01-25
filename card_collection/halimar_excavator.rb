class HalimarExcavator < Card

  name 'Halimar Excavator'

  creature :human, :wizard, :ally

  mana_cost 1, :U

  pt 1 / 3

  text "Whenever Halimar Excavator or another Ally enters the battlefield "    + 
       "under your control, target player puts the top X cards of his or her " +
       "library into his or her graveyard, where X is the number of Allies "   +
       "you control."
end


