class PeopleController < ApplicationController
  def index
    @msg = 'Person data.'
    @data = Person.all
  end

  def show
    @msg = 'Indexed data.'
    @data = Person.find(params[:id])
  end

  def add
    @msg = "add new data."
    @person = Person.new
  end

  # protect_from_forgery
  
  def create 
    if request.post? then
      Person.create(person_params)
    end
      redirect_to '/people'
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @person = Person.find(params[:id])
  end

  def update
    # 送られてきたIDを元に、DBから更新するデータをモデルのオブジェクトとして取り出す
    # オブジェクトの値を更新する、paramsを引数にするだけで全部やってくれる（変数を見て代入作業を行ってくれる）
    # リダイレクトでトップページに戻る
    obj = Person.find(params[:id])
    obj.update(person_params)
    redirect_to '/people'    
  end

  # ここで上記のperson_paramsの引数を決定している
  private
  def person_params
    # requireはparamsクラスの中にあるメソットでparamsの中に指定の値が存在することをチェックするメソッド
    # require(:person)ならparams[:person]という値があることをチェックしている
    # permitというメソッドは引数に指定されている項目が用意されているかチェックするメソッド、:name,:age,:mailという項目があるかどうかをチェックしていた。
    # これで安心してcreateに引数を渡せてめでたしめでたし。
    params.require(:person).permit(:name,:age,:mail)
  end

end
