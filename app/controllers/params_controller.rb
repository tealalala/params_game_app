class ParamsController < ApplicationController
  def query
    @name = params[:name]

    if @name.downcase.first == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

    render 'the_query.json.jbuilder'
  end

  def query_game
    @app_random_number = rand(1..100).to_i

    render 'query_game.json.jbuilder'
  end
end
