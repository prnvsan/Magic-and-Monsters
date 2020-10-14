module Fight
  require './scene.rb'  
  class Fightscene < Scene::Sceneclass
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
end