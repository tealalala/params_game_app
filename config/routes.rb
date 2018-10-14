Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/params_route' => '/params#query'
    get '/params_game_route' => '/params#query_game'
    get '/url_segment_params_game_route/:guess' => '/params#query_game'
  end
end
