class ParamsController < ApplicationController
  def query
    @name = params[:name]

    if @name[0] == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

    render 'the_query.json.jbuilder'
  end

  def query_game
    @app_random_number = 81
    @user_guess = params[:guess].to_i

    if @user_guess == @app_random_number
      @message = "You got it right"
    elsif @user_guess > @app_random_number
      @message = "Too high. Guess again."
    elsif @user_guess < @app_random_number
      @message = "Too low. Guess again."
    end

    render 'query_game.json.jbuilder'
  end
end
