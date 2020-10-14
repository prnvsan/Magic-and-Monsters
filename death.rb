module Death
 require './scene.rb'
  class Deathscene < Scene::Sceneclass
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
     sleep 1.5
     puts "\n"
     puts "\n"
     require("./assets/asciiart.rb")
     Asciiart.render("./assets/choicemap.txt")
     sleep 1.5
     exit(1)
   end
  end
end