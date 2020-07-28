class MemosController < ApplicationController
  def index
    @memos = current_user.memos
  end

  def show
    @memo = current_user.memos.find(params[:id])
  end

  def new
    @memo = Memo.new
  end

  def edit
    @memo = current_user.memos.find(params[:id])
  end

  def create
    memo = Memo.new(memo_params.merge(user_id: current_user.id))
    memo.save!
    redirect_to memos_url, notice: "メモ：タイトル「#{memo.title}」を保存しました。"
  end

  def update
    memo = Memo.find(params[:id])
    memo.update!(memo_params)
    redirect_to memos_url, notice: "メモ：タイトルy「#{memo.title}」を更新しました。"
  end

  def destroy
    memo = current_user.memos.find(params[:id])
    memo.destroy
    redirect_to memos_url, notice: "メモ：タイトル「#{memo.title}」を削除しました。"
  end
  private

  def memo_params
    params.require(:memo).permit(:title, :description)
  end

end
