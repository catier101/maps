class Geocode
  def initialize
    @lat = "unknown"
    @long = "unknown"
  end
  
  def getloc
    puts "What would you like the location of?"
    @locname = gets.chomp
  end
  
  def searchloc(address) #LINK: https://developers.google.com/maps/documentation/javascript/examples/geocoding-simple
    address = @locname.downcase
    address
  end

  def checkloc
    if @locname.downcase == "eiffel tower"
        puts "Latitude: 48.8582"
        puts "Longitude: 2.2945"
    end
  end
end

new = Geocode.new
new.getloc
new.searchloc("eiffel tower")
new.checkloc