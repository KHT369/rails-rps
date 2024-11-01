class ZebraController < ApplicationController
  def rules
    render({ :template = > "layouts/rules"})
    
  end
  
  def giraffe
    render({ :template => "game_templates/play_rock" })
    @random_move = ["rock", "paper", "scissors"].sample
    
  end

  def elephant 
    render({ :template = > "game_templates/play_paper"})
end
