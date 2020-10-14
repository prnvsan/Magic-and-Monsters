module Cave
 require './scene.rb'

  class Cavescene < Scene::Sceneclass
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

end