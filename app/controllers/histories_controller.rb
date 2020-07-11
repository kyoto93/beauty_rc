class HistoriesController < ApplicationController

  def new
    @history = History.new
    @history.history_images.build
    #小モデル版のnew
  end

  def create
    #byebug
    history = History.new(history_params)
    history.user_id = current_user.id
    history.save
    redirect_to histories_path(genre_id:history.genre.id)
  end

  def index
      @genre = Genre.find(params[:genre_id])
      #この記述でジャンルの中のIDを探してくる
      @histories = @genre.histories
      #１対多を書いてる
  end

  def show
     @history = History.find(params[:id])

  end

  def edit
     @history = History.find(params[:id])
  end

  def update
    history = History.find(params[:id])
    history.update(history_params)
    redirect_to history_path(history.id)
  end

  def destroy
    history = History.find(params[:id]) #データ(レコード)を1件取得
    history.destroy #データ（レコード）を削除
    redirect_to histories_path(genre_id: history.genre_id)
    #genre_id: ?の後ろのurlの文字列
    #history.genre_id =○の数字部分　値

    #?genre_id=1　クエリパラメーター
    # /1 urlパラメーター
    #編集したカテゴリの一覧画面へリダイレクト
  end

  private
  def history_params
    #一連の流れの名前(ラジオ体操第一)
     params.require(:history).permit(:body,:genre_id, :price,:dating, history_images_images: [])
     #params画面から受け取ったdate
     #requireテーブルに対する受入れ
     #parmit値を許可する
  end
end
