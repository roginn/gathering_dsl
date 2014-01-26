class FiligreeAngel < Card

  name 'Filigree Angel'

  artifact creature :angel

  mana_cost 5, :W, :W, :U

  flying

  pt 4 / 4

  text 'When Filigree Angel enters the battlefield, you gain 3 life for each ' +
       'artifact you control.'

  flavor 'I craved enlightenment, and Crucius\'s etherium opened my eyes. I '  +
         'would share my sight with you, but first you must believe.'


  #mechanics
  # whenever :this, :enters_battlefield do
  #   # ...
  # end

end
