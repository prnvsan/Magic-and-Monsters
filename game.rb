$level = 1
$exp = 0
$gold = 0
$playerhp = 10
$playerap =  2

class Scene
  def enter()
    puts "Nil"
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

    require("./assets/asciiart.rb")
    Asciiart.render("./assets/magicandmonsters.txt")

    sleep 2.5
    puts "\n"
    puts "\n"
    puts "Welcome to Magic and Monsters!"
    sleep 1.5
    puts "You are an adventurer!"
    puts "\n"
    sleep 1.5
    puts "Skilled in the use of swords and magic,"
    puts "\n"
    sleep 2.5

    require("./assets/asciiart.rb")
    Asciiart.render("./assets/sword.txt")

    sleep 1.5
    puts "\n"
    puts "\n"
    puts "You embark on a journey to find new adventures and wondrous treasures!"
    puts "\n"
    sleep 2.5

    require("./assets/asciiart.rb")
    Asciiart.render("./assets/treasure.txt")

    sleep 1.5
    puts "\n"
    puts "\n"
    puts "Presently, your story begins!"
    puts "\n"
    sleep 2.5
    puts "A world filled with monsters and vast riches await you..."
    sleep 2.5
    require("./assets/asciiart.rb")
    Asciiart.render("./assets/monster.txt")
    sleep 1.5
    puts "\n"
    puts "\n"
    puts "Note: Use keywords like big, small, walk, run for inputs :)"
    puts "\n"
    puts "\n"
    puts "Press any key to start your journey!"
    print ">"
    start = $stdin.gets.chomp

    system ('clear')

    require("./assets/asciiart.rb")
    Asciiart.render("./assets/castlename.txt")

    sleep 1.5
    require("./assets/asciiart.rb")
    Asciiart.render("./assets/castle.txt")
    sleep 2.5
    puts "\n"
    puts "\n"
    puts "You are in a dark, grimy castle"
    puts "\n"
    sleep 1.5
    puts "Torches illuminate the dark hallways"
    puts "\n"
    sleep 1.5
    puts "A humongous firebreathing dragon lies in deep slumber atop a gleaming pile of gold and other magnificient treasures "
    puts "\n"
    sleep 3.5
    puts "You're hard pressed for some cash. The gold looks enticing, what do you do?"
    puts "\n"
    sleep 1.5
    puts "1.Walk straight towards the monstrous thing  2.Run while you still can >.<   3.Try out a stealthy approach"
    print ">" 
    var1 = $stdin.gets.chomp 
 
    if ["walk","1","Walk","1.","towards","Walk straight towards the monstrous thing","1.Walk straight towards the monstrous thing"].include? var1
      puts "You unsheathe your sword made out of mithril, should be able to cut through people like butter. \n"
      puts "\n"
      sleep 3
      puts " The dragon stirs. Uh-oh Still think this is a good idea? :/ "
      print ">"         
      var2 = $stdin.gets.chomp
      if ["yes","yes this is a good idea","Yes","good idea","Yes this is a good idea"].include? var2
        puts "\n"
        puts "You bravely move towards the dragon"
        puts "\n"
        sleep 1.5
        puts "Suddenly it opens its eyes and is rudely woken out of its deep sleep"
        puts "\n"
        sleep 1.5
        puts "He doesn't look happy."
        sleep 1.5

        require("./assets/asciiart.rb")
        Asciiart.render("./assets/dragonangry.txt")

        puts "\n"
        puts "\n"
        puts "ROARRRRRRRR"
        puts "The dragon lets out an enormous flame and burns you to toast."
        puts "\n"
        sleep 2.5
        puts "Tough luck."
        sleep 2.5
      return "Death"
   
      else
        puts "Smart move "
        puts "\n"
        puts "\n"
        puts "You bolt immediately"
        puts "\n"
        puts "\n"

        require("./assets/asciiart.rb")
        Asciiart.render("./assets/run.txt")

        puts "\n"
        puts "\n"
        sleep 1.5
        puts "You found a way out of the castle!"
        puts "\n"
        return "Forest"   
      end

    elsif ["run","Run","2","2.Run while you still can","Run while you still can"].include? var1
     puts "Whew, okay." 
     puts "\n"
     puts "You Run down the first path you see."
     puts "\n"
     puts "\n"

     require("./assets/asciiart.rb")
     Asciiart.render("./assets/run.txt")

     puts "\n"
     puts "\n"
     sleep 2.5
     puts "A gigantic Murderous Bloodhound appears out of literally nowhere"
     puts "\n"
      return "Fighthound"
     
    elsif ["stealth","Stealth","3","3.","Try out a stealthy approach","3.Try out a stealthy approach"].include? var1
      puts "You tip-toe towards the dragon"
      sleep 1.5
      puts "\n"
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

      require("./assets/asciiart.rb")
      Asciiart.render("./assets/dragonasleep.txt")

      sleep 2.5
      puts "\n"
      puts "\n"
      puts "You're saved!"
      puts "\n"
      sleep 1.5
      puts "Time to swindle some treasure!. Do you take the big treasure chest or the small one?"
      print ">" 
      var4 = $stdin.gets.chomp
   
      if ["Big","big","big treasure chest","Big treasure chest"].include? var4
        puts "Greedy, are we?"

        require("./assets/asciiart.rb")
        Asciiart.render("./assets/bigchest.txt")

        puts "\n"
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
        sleep 2.5
        #return "Cliff"
        return "Finished"
    
      elsif ["Small","small","small treasure chest","Small treasure chest","The small one","small one","small treasure chest"].include? var4
        puts "Noice. You're not greedy :)"

        require("./assets/asciiart.rb")
        Asciiart.render("./assets/smallchest.txt")

        puts "\n"
        sleep 1.5
        puts "You can move faster because the chest is small."
        puts "\n"
        sleep 2.5
        #return "Mountain"   
        return "Finished"
      end
 
    else
      print "Type in something sensible!"
      return "Castle" 
    end  
  end 
end   


    
class Forest < Scene
  def enter()
    puts "Press any key to continue"
    print ">"
    start = $stdin.gets.chomp
    system ('clear')

    require("./assets/asciiart.rb")
    Asciiart.render("./assets/forest.txt")

    sleep 2.5

    Asciiart.render("./assets/trees.txt")

    puts "\n"
    puts "\n"
    sleep 2.5
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
    puts "\n"
    sleep 2.5

    require("./assets/asciiart.rb")
    Asciiart.render("./assets/door.txt")

    puts "\n"
    puts "\n"
    puts "Hello traveller, you look like you are battle worn and brave. Give you a chance, I shall to take a treasure with you or send you to your grave..."
    puts "\n"
    puts "\n"
    sleep 5.5
    puts "If you answer my questions, riddles they are. Find the key to the sword of legends, you shall!"
    puts "\n"
    sleep 4.5
    puts "You decide to answer the riddle so that the door will open"
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
    if ["A soap bubble", "a soap bubble","soap bubble","Soap bubble","soap"].include? var5
      print "°ₒ°ₒ°ₒ"
      puts "\tCorrect."
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
      if ["Smoke","smoke"].include? var6
        puts "\n"
        puts ",',\n , \n', "          
        print "Looks like you're right."
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
    puts "Press any key to continue"
    print ">"

    start = $stdin.gets.chomp

    system ('clear')

    require("./assets/asciiart.rb")
    Asciiart.render("./assets/cave.txt")

    puts "\n"
    puts "\n"
    sleep 1.5
    puts "You have entered the cave!"
    sleep 2.5
    puts "\n"

    require("./assets/asciiart.rb")
    Asciiart.render("./assets/cavebat.txt")

    puts "\n"
    puts "\n"
    puts "It is incredibly dark"
    puts "\n"
    sleep 3.5
    puts "Suddenly, torches placed on the sides of the wall light up!"
    #require("./assets/asciiart.rb")
    #Asciiart.render("./assets/torch.txt")
    #sleep 2.5
    #puts "\n"
    puts "\n"
    sleep 2.5
    puts "You see, on a rock placed at the end of the cave, A gleaming mystical sword!"
    puts "\n"
    sleep 1.5

    require("./assets/asciiart.rb")
    Asciiart.render("./assets/mysticsword.txt")

    sleep 3.5
    puts "\n"
    puts "\n"
    puts "It is the sword of legends!. But as you get closer and reach for the sword.."
    puts "\n"
    sleep 3.5
    puts "ROARRRRRRRRRR!!"
    puts "A Wyvern appears, flapping its wings! "
    puts "\n"
    sleep 2.5
    puts "It was hiding on the roof of the cave!"
    puts "\n" 
    puts sleep 2.5
    $playerhp = 10 #will be removed when potions are added and combat system is more refined
    return "Fightwyvern"
  end
end  

class Sword < Scene
  def enter()
    puts "Press any key to continue"
    print ">"

    start = $stdin.gets.chomp

    system ('clear')
    puts "\n"
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
    puts "\n"
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
    if (var7 == "x" && var8 == "x" && var9 == "x")
      puts "\n"
      puts "HYAAAAAAAAAAAAAAAA!!"
      puts "\n"
      sleep 2
      puts "You pulled out the sword!"
      puts "\n"
      sleep 1.5
      puts "You received the Legendary sword!"
      $playerap = $playerap + 1
      sleep 2.5  
      return "Finished"
    else
      print "Now, what did I tell you?. Press the right key!"
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
    if $level == 1
      $playerap = 2
 
    elsif $level == 2
      $playerap = 3
 
    else 
      $playerap = 4 
    end    
  
    
    monsterhp = rand (5..15)
  
    puts "Press any key to continue"
    print ">"
    start = $stdin.gets.chomp
    system ('clear')
    puts "You face a wild monster, a #{@name} !! "
    puts "\n"
    puts "\n"
    sleep 1.5

    case  @name
    when "Murderous Bloodhound"
      require("./assets/asciiart.rb")
      Asciiart.render("./assets/bloodhound.txt")
      monsterap = 1

    when "Legendary Wyvern"
      require("./assets/asciiart.rb")
      Asciiart.render("./assets/wyvern.txt")
      monsterap = 2
    else
      print "image.jpg"
    end

    puts "\n"
    puts "\n"
    
    puts "It has a total hp of #{monsterhp}! "
    puts "\n"
    sleep 2.5
    puts "Your sword is at level #{$level}, gulp! "
    puts "\n"
    sleep 2.5
    puts "And your hp is 10! "
    puts "\n"
    sleep 2.5
    puts "Time to brave up, it's fight night. "
    puts "\n"
    sleep 2.5
  
    while $playerhp > 0
      puts "\n"
      puts "Time for an attack, press x to unleash the fury of your sword! "
      print ">" 
      var3 = $stdin.gets.chomp  
    
      if  var3 == "x"
        puts "HYAAA! you gave the #{@name} a good whack with your epic sword! "
        puts "\n"
        sleep 1.5
        monsterhp = monsterhp-$playerap
       
        if monsterhp <=0
          puts "The #{@name} is dead mwahahah! GG "
          puts "\n"
          sleep 1.5
          break
        end

        puts "The #{@name}s hp is now #{monsterhp} "
        puts "\n"
        sleep 1.5
        puts "Time for the counterattack! The #{@name} gets ready...and PLOW!, deals damage! "
        puts "\n"
        sleep 1.5
        $playerhp = $playerhp - monsterap

        if  $playerhp <=0
          puts "Your hp becomes zero!"
          puts "\n"
          sleep 2.5
          break
        end

        print "Your hp is now #{$playerhp} "  
        puts "\n"
        sleep 1.5
   
      else
        puts "You pressed the wrong button! "
        puts "\n"
        sleep 1.5
        puts "The #{@name} takes this chance and deals damage! "
        puts "\n"
        $playerhp = $playerhp - monsterap
        puts "Your hp is now #{$playerhp} "
        puts "\n"
        sleep 1.5
      end
    end  
 
    if monsterhp <= 0
      variable =  rand (1..10)
      $gold = $gold + variable
      puts "Yuss! You received #{$gold} gold for defeating the monster!"
      puts "\n"
      sleep 2.5

      $level = $level + 1
      if @name == "Murderous Bloodhound"
        return "Forest"
      end
      if @name == "Legendary Wyvern"
        return "Sword"
      end
    end

    if $playerhp <= 0
      return "Death" 
    end      
  end
end

class Death < Scene
  def enter()
    system ('clear')
    puts "You're dead :( Rip"
    puts "\n"
    require("./assets/asciiart.rb")
    Asciiart.render("./assets/death.txt")
    sleep 1.5
    puts "\n"
    puts "\n"
    puts "There are many countless endings to your tale, Brave Hero! Try again to see what story unfolds!" 
    puts "\n"
    puts "\n"
    exit(1)
  end
end

class Finished < Scene
  def enter()
    system ('clear')
    puts "More coming soon!"
    exit(1)
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


