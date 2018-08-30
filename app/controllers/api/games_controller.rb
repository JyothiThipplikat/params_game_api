class Api::GamesController < ApplicationController
  def game_one_action
    @your_name = params["name"]
    @capitalized_name = params["name"].upcase    
    render "game_one_view.json.jbuilder"
  end

  def first_letter
    @your_name = params["name"]
    if @your_name.downcase[0] == "a"
      @message = "Hey,your name starts with the first letter of the alphabet"
    end
    render "first_letter.json.jbuilder"
  end

  def guess
    @number =params["guess"].to_i
    target = 42
    if @number > target
      @message "Too High, try something lower"
    elsif @number < target
      @message "Too low, you really should aim higher"
    else
      @message "You got it!"
    end
    render "guess.json.jbuilder"

  end
    
  end

  def segment_games_action
    @input_value = params["guess_game"].to_i

    target = 42
    if @number > target
      @message "Too High, try something lower"
    elsif @number < target
      @message "Too low, you really should aim higher"
    else
      @message "You got it!"
    end
    render "segment_guess_view.json.jbuilder"
  end

end
