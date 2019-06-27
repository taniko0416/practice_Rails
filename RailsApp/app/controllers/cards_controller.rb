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
    # .requireメソッドがデータのオブジェクト名を定め、（create時のバリデーション）
    # .permitメソッドで変更を加えられる（保存の処理ができる）キーを指定します。（update時のバリデーション）
    # 仮に悪意のあるリクエスト（指定した以外のデータを送ってくる等）を受けた際に、
    # .permitメソッドで許可していない項目については変更されず、データの扱いがより安全になります。
    card_paramsparams.require(:card)
    .permit(:title,:author,:price,:publisher,:memo)
  end

  private
  def goback
    redirect_to "/cards"
  end

end
