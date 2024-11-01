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
    @outcome = "We played rock!\nThey played #{ai_choice}!\n #{roll_rock(ai_choice)}"
    render({ :template => "game_templates/play_rock" })
  end

  def elephant 
    ai_choice = random
    @outcome = "We played paper!\nThey played #{ai_choice}!\n #{roll_paper(ai_choice)}"
    render({ :template => "game_templates/play_paper"})
  end

  def lion 
    ai_choice = random
    @outcome = "We played scissors!\nThey played #{ai_choice}!\n #{roll_scissors(ai_choice)}"
    render({ :template => "game_templates/play_scissors"})
  end

  private

  def roll_rock(ai_choice)
    if ai_choice == "paper"
      "We lost!"
    elsif ai_choice == "rock"
      "We tied!"
    else
      "We won!"
    end
  end

  def roll_paper(ai_choice)
    if ai_choice == "scissors"
      "We lost!"
    elsif ai_choice == "paper"
      "We tied!"
    else
      "We won!"
    end
  end

  def roll_scissors(ai_choice)
    if ai_choice == "scissors"
      "We tied!"
    elsif ai_choice == "paper"
      "We won!"
    else
      "We lost!"
    end
  end
end
