class Api::MainController < ApplicationController
  def everything
    render json: {
      categories:
        Category.top_level.map { |item| CategorySerializer.new(item)},
      locations:
        Location.top_level.map { |item| LocationSerializer.new(item)},
      ingredients:
        Ingredient.all.as_json
    }
  end
end