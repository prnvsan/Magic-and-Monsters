module Castle
  require './scene.rb'
   
  class Castlescene < Scene::Sceneclass
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
        
        else
            print "Type in something sensible!"
            return "Castle" 
        end  

      else
        print "Type in something sensible!"
        return "Castle" 
      end  
    end 
  end 
end  
