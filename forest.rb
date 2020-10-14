module Forest
  require './scene.rb'
  class Forestscene < Scene::Sceneclass
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
end