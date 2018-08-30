Rails.application.routes.draw do
  namespace :api do
    get "/play_game_url" => "games#game_one_action"
    get "/first_letter" => "games#first_letter"
    # get "/guessing" => "games#guess"
    get "/segment_guess_url/:guess_game" => "games#segment_games_action"
  end
end
