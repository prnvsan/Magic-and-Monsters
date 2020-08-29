module Asciiart
  def Asciiart.render(filename)
    File.readlines(filename).each do |line|
      puts line
    end
  end
end

