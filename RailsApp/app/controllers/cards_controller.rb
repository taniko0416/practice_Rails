class CardsController < ApplicationController
  layout "cards"

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def add
    if request.post? then
      Card.create(card_params)
      goback
    else
      @card = Card.new
  end

  def edit
    Card.find(params[:id]).destroy
    goback
  end

  private
  def card_params
    card_paramsparams.request(:card)
    .permit(:title,:author,:price,:publisher,:memo)
  end

end
