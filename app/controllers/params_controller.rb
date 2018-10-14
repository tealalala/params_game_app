class ParamsController < ApplicationController
  def query
    @name = params[:name]
    render 'the_query.json.jbuilder'
  end
end
