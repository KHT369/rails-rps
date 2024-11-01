class ZebraController < ApplicationController
  def rules
    render({ :template => "layouts/rules"})

  end
  
  def random 
    rps = ["rock", "paper", "scissors"]
    rps.sample
  end

  def giraffe
    
    ai_choice = random
  
    @outcome = "We played rock!\nThey played #{ai_choice}!\n #{roll(ai_choice)}"
    
    render({ :template => "game_templates/play_rock" })
  end

  def roll(ai_choice)
    if ai_choice == "paper"
      pp "We lost!"
    elsif ai_choice == "rock"
      pp "We tied!"
    else
      pp "We won!"
    end
  end

  def elephant 
    ai_choice = random
  
    @outcome = "We played paper!\nThey played #{ai_choice}!\n #{roll(ai_choice)}"

    render({ :template => "game_templates/play_paper"})
  end

  def lion 
    ai_choice = random
  
    @outcome = "We played scissors!\nThey played #{ai_choice}!\n #{roll(ai_choice)}"

    render({ :template => "game_templates/play_scissors"})
  end


end
