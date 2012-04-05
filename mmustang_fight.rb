class Fight
  MAXLEVEL = 10 # adjust this if you put more shit below
  MONSTERS = [	"youtuber", 
                "furry", 
                "brony", 
                "twitter celebrity", 
                "wikipedian",
                "lowtax",
                "channer",	
                "sanic hegehog",
                "weeaboo",	
                "sonichu"	]

  BOSSES = [	"Negi Springfield",
                "Shaun Scotellaro",
                "Christian Chandler",
                "fractal", #suck it, psychotic sperg
                "Jimmy Wales" 	]

  INTRO = "Welcome to Asperger eats you. !roll to fight."
  ALREADY_PLAYED = "You've already played today."


  def initialize(network = "niggernet", trollname="generictroll", level=0, alreadyplayed=0, bosslevel=0)
    @network = network
    @intro_played = false
    @trollname = trollname
    @level = level
    @alreadyplayed = alreadyplayed
    @bosslevel = bosslevel
  end
  def dice_roll
    return rand(1...7)
  end
  def welcome
    if @alreadyplayed == true 
      print ALREADY_PLAYED
    else
      puts INTRO
      if @bosslevel > 0
        puts "You are the great IRC Warlord, Internet Gangster #{@trollname}, who killed the fearsome #{BOSSES[@bosslevel-1]}, level #{@bosslevel-1}."
      else
        puts "You are a level #{@level}, #{MONSTERS[@level]} slayer, #{@trollname}. If you are patient, you might once take on the #{BOSSES[@bosslevel]}"
      end
    end
  end
  def bossfight
    @curroll = dice_roll
    if @curroll < 6
      puts "You rolled a #{@curroll}. Asperger eats you."
      return @level
    else
      puts "You rolled a #{@curroll}, you defeated the #{BOSSES[@bosslevel]}. Type !roll to fight again."
      @bosslevel += 1
      @level = 0
      return @level
    end
  end

  def level
    @level
  end

  def trollname
    @trollname
  end

  def network
    @network
  end

  def bosslevel
    @bosslevel
  end

  def fight
    @curroll = dice_roll
    if @curroll < 5
      puts "You rolled a #{@curroll}. Asperger eats you"
      return @level
    else
      puts "You rolled a #{@curroll}, you defeated the #{MONSTERS[@level]}. Type !roll to fight again."
      @level += 1
      return @level
    end
    
  end
end
