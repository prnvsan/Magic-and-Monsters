module Sword
  require './scene.rb'
  class Swordscene < Scene::Sceneclass
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
end