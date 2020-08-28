$level = 1
$expbar = {}
$gold = 0
$legendarysword = false

class Scene
  def enter()
    puts "NIl"
    exit(1) 
  end
end

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    
    current_scene.enter()
  end
end

class Castle < Scene
  def enter()
    puts "You are an adventurer!"
    puts "\n"
    sleep 1.5
    puts "Skilled in the use of swords and magic,"
    puts "\n"
    sleep 2.5
    puts "You embark on a journey to find new adventures and wondrous treasures!"
    puts "\n"
    sleep 3.5
    puts "Presently, your story begins!"
    puts "\n"
    sleep 1.5
    puts "A world filled with Monsters and vast riches awaits you..."
    puts "\n"
    sleep 2.5
    puts "Press any key to start your journey!"
    print ">"
    start = $stdin.gets.chomp
    puts "You are in a dark, grimy castle"
    puts "\n"
    sleep 1.5
    puts "Torches illuminate the dark hallways"
    puts "\n"
    sleep 1.5
    puts "A gigantic firebreathing dragon lies in deep slumber atop a gleaming pile of gold and other magnificient treasures "
    puts "\n"
    sleep 3.5
    puts "You're hard pressed for some cash. The gold looks enticing, what do you do?"
    puts "\n"
    sleep 1.5
    puts "1. Walk straight towards the monstrous thing  2.Run while you still can >.<   3.Try out a stealthy approach"
    print ">" 
    var1 = $stdin.gets.chomp 
 
    if var1 == "walk"
      puts "You unsheathe your sword made out of mithril, should be able to cut through people like butter. \n"
      puts "\n"
      sleep 3
      puts " The dragon stirs. Uh-oh Still think this is a good idea? :/ "
      print ">"         
      var2 = $stdin.gets.chomp
      if  var2 == "yes"
        puts "/n"
        puts "You bravely move towards the dragon"
        puts "\n"
        sleep 1.5
        puts "Suddenly it opens it's eyes and is rudely woken out of it's deep sleep"
        puts "\n"
        sleep 1.5
        puts "He doesn't look happy."
        puts "\n"
        sleep 1.5
        puts "ROARRRRRRRR"
        puts "The dragon lets out an enormous flame and burns you to toast."
        puts "\n"
        sleep 1
        puts "Tough luck."
      return "Death"
   
      else
        puts "Smart move "
        puts "\n"
        puts "You bolt immediately"
        puts "\n"
        sleep 1.5
        puts "You found a way out of the castle!"
        puts "\n"
        return "Forest"   
      end

    elsif var1 == "run"
     puts "Whew, okay." 
     puts "\n"
     puts "You Run down the first way you see."
     puts "\n"
     sleep 1.5
     puts "A gigantic Murderous Bloodhound appears out of literally nowhere"
     puts "\n"
      return "Fighthound"
     
    elsif var1 == "stealth"
      puts "You pull out a magical flute that you inherited from your grandad"
      puts "\n"
      sleep 1.5
      puts "Turns out it can put magical creatures to sleep"
      puts "\n"
      sleep 1.5
      puts "You pull it out and start playing it"
      puts "\n"
      sleep 1.5
      puts "The dragon ruffles a bit and settles in"
      puts "\n"
      puts "You're saved!"
      puts "\n"
      sleep 1.5
      puts "Time to swindle some treasure!. Do you take the big treasure chest or the small one?"
      print ">" 
      var4 = $stdin.gets.chomp
   
      if  var4 == "big"
        puts "Greedy, are we?"
        puts "\n"
        sleep 1.5
        puts "You try your best to escape from the dragon with the treasure chest but it is heavy"
        puts "\n"
        sleep 3.5
        puts "You drag it across the cold stone floor of the castle"
        puts "\n"
        sleep 1.5
        puts "Whops. The dragon raises a ear."
        puts "\n"
        sleep 1.5
        puts "But he goes to sleep again"
        puts "\n"
        return "Cliff"
    
      else var4 == "small"
        puts "Noice. You're not greedy :)"
        puts "\n"
        sleep 1.5
        puts "You can move faster because the chest is small."
        puts "\n"
        return "Mountain"   
      end
 
    else
      print "Type in something sensible!"
      return "Castle" 
    end  
  end 
end   


    
class Forest < Scene
  def enter()
    puts "You've somehow escaped the castle, now you find yourself in the enchanted forest, Ellesmere!"
    puts "\n"
    sleep 3.5
    puts "The sunlight pierces through the canopy of the trees"
    puts "\n"
    sleep 2.5
    puts "Legend has it that evil spirits lurk in this forest"
    puts "\n"
    sleep 2.5
    puts "A witcher had once, generations ago come here to seek the sword of truth"
    puts "\n"
    sleep 2.5
    puts "A sword of legend, with which he slayed any evil spirit and brought peace to the land"
    puts "\n"
    sleep 3.5
    puts "You decide that since you are here, you will search for the sword to help aid you in your quest"
    puts "\n"
    sleep 2.5
    puts "After wandering  around for what seems like ages, you come to a door with, what appears to be a stone face"
    puts "\n"
    sleep 3.5
    puts "WHO GOES THERE?"
    puts "\n"
    sleep 1.5
    puts "You are startled! Looks like the door is talking!"
    puts "\n"
    sleep 2.5
    puts "Hello traveller, you look like you are battle worn and brave. Give you a chance, I shall to take a treasure with you or send you to your grave..."
    puts "\n"
    sleep 4.5
    puts "If you answer my questions, riddles they are. Find the key to the sword of legends, you shall!"
    puts "\n"
    sleep 4.5
    puts "You decide to answer the riddle"
    puts "\n"
    sleep 2.5 
    puts "The door starts talking again.."
    puts "\n"
    sleep 2.5
    puts "Dipping, glinting, gliding by,"
    puts "Rainbow-fretted, wrought of breath."
    puts "I live only while I fly –"
    puts "Earth’s rough kiss my sudden death." 
    puts "What am I?"
    print ">" 
    var5 = $stdin.gets.chomp
    if var5 == "a soap bubble"
      puts "Correct."
      puts "\n"
      sleep 1.5
      puts "Here is my second riddle!"
      puts "\n"
      sleep 1.5
      puts "I am the black child of a white father, a wingless bird, flying even to the clouds of heaven."
      puts "I give birth to tears of mourning in pupils that meet me, even though there is no cause for grief,"
      puts "and at once on my birth I am dissolved into air. What am I?"
      print ">" 
      var6 = $stdin.gets.chomp
      if var6 == "smoke"
        puts "Congratulations, traveller. I will let you in!"
        puts "\n"
        sleep 2.5
        puts "CLANGG!"
        puts "\n"
        sleep 2.5
        puts "The Door opens!"
        return "Cave"
      end

    else
      print "Your answer is wrong!. The door will deliver punishment!"
      puts "\n"
      return "Death"
    end
  end
end
 
class Cave < Scene
  def enter()
    puts "You have entered the cave!"
    puts "\n"
    sleep 1.5
    puts "It is incredibly dark"
    puts "\n"
    sleep 1.5
    puts "Suddenly, torches placed on the sides of the wall light up!"
    puts "\n"
    sleep 2.5
    puts "You see, on a rock placed at the end of the cave, A gleaming mystical sword!"
    puts "\n"
    sleep 3.5
    puts "It is the sword of legends!. But as you get closer and reach for the sword.."
    puts "\n"
    sleep 3.5
    puts "ROARRRRRRRRRR!!"
    puts " A Wyvern appaears, flapping its wings! "
    puts "\n"
    sleep 2.5
    puts "It was hiding on the roof of the cave!"
    puts "\n"
    return "Fightwyvern"
  end
end  

class Sword < Scene
  def enter()
    puts "You have successfully defeated the Wyvern!"
    puts "\n"
    sleep 1.5
    puts "Time to pull out the sword from the rock!"
    puts "\n"
    sleep 1.5
    puts "You pull and heave with all your might!.."
    puts "\n"
    sleep 1.5
    puts "AAAAAAARGGHHHH!"
    puts "The sword moves slightly"
    puts "\n"
    sleep 1.5
    puts "Enter X three times to pull the sword!"
    print ">" 
    var7 = $stdin.gets.chomp
    print ">" 
    var8 = $stdin.gets.chomp
    print ">" 
    var9 = $stdin.gets.chomp
    if (var7 == "X" && var8 == "X" && var9 == "X")
      puts "HYAAAAAAAAAAAAAAAA!!"
      puts "\n"
      sleep 2
      puts "You pulled out the sword!"
      puts "\n"
      sleep 1.5
      puts "You received the Legendary sword!"
      $legendarysword = true
      return "Finished"
    else
      print "Now,what did I tell you?"
      puts "\n"
      return "Sword"
    end
  end
end   
class Fight < Scene
  def initialize(name)
    @name = name
  end

  def enter()
    puts "You face a wild monster, a #{@name} !! "
    
    if $level == 1
      playerap = 2
 
    elsif $level == 2
      playerap = 3
 
    else 
      playerap = 4 
    end    
  
    monsterap = rand (1..7)
    monsterhp = rand (5..20)
  
    playerhp = 10
    puts "It has a total hp of #{monsterhp}! "
    sleep 2.5
    puts "Your sword is at level #{$level}, gulp! "
    sleep 2.5
    puts "And your hp is 10! "
    sleep 2.5
    puts "Time to brave up, it's fight night. "
  
    while playerhp > 0
      puts "Time for an attack, press x to unleash the fury of your sword! "
      print ">" 
      var3 = $stdin.gets.chomp  
    
      if  var3 == "x"
        puts "HYAAA! you gave the #{@name} a good whack with your epic sword! "
        monsterhp = monsterhp-playerap
       
        if monsterhp <=0
          puts "The #{@name} is dead mwahahah! GG "
          break
        end

        puts " The #{@name}s hp is now #{monsterhp} "
        puts "Time for the counterattack! The #{@name} gets ready...and PLOW!, deals damage! "
        playerhp = playerhp - monsterap

        if  playerhp <=0
          puts "Your hp becomes zero!"
          break
        end

        print "Your hp is now #{playerhp} "  
   
      else
        puts "You pressed the wrong button! "
        puts "The #{@name} takes this chance and deals damage! "
        playerhp = playerhp - monsterap
        puts "Your hp is now #{playerhp} "
      end
    end  
 
    if monsterhp == 0
      variable =  rand (1..10)
      $gold = $gold + variable
      puts "Yuss! You received #{$gold} for defeating the monster!"
      sleep 2.5

      $level = $level + 1
      if @name == "Murderous Bloodhound"
        return "Castle"
      end
      if @name == "Legendary Wyvern"
        return "Sword"
      end
    end

    if playerhp <= 0
      return "Death" 
    end      
  end
end

class Death < Scene
  def enter()
    puts "You're dead :( Rip"
    exit(1)
  end
end

class Finished < Scene
  def enter()
    puts "It's over"
  end
end

class Map
  @@scenes = {
    'Castle' => Castle.new(),
    'Fighthound' => Fight.new("Murderous Bloodhound"),
    'Death' => Death.new(),
    'Finished' => Finished.new(),
    'Forest' => Forest.new(),
    'Fightwyvern' => Fight.new("Legendary Wyvern"),
    'Sword' => Sword.new(),
    'Cave' => Cave.new()
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
a_game = Engine.new(a_map)
a_game.play()


