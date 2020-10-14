require './engine.rb'
require './castle.rb'
require './forest.rb'
require './cave.rb'
require './sword.rb'
require './death.rb'
require './finished.rb'
require './fight.rb'

$level = 1
$exp = 0
$gold = 0
$playerhp = 10
$playerap =  2

 


class Map
  @@scenes = {
    'Castle' => Castle::Castlescene.new(),
    'Fighthound' => Fight::Fightscene.new("Murderous Bloodhound"),
    'Death' => Death::Deathscene.new(),
    'Finished' => Finished::Finishedscene.new(),
    'Forest' => Forest::Forestscene.new(),
    'Fightwyvern' => Fight::Fightscene.new("Legendary Wyvern"),
    'Sword' => Sword::Swordscene.new(),
    'Cave' => Cave::Cavescene.new()
 }


  def initialize(start_scene)
    @start_scene = start_scene
  end


  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('Castle')
a_game = Game_engine::Engine.new(a_map)
a_game.play()


