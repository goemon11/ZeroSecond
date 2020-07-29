class MemosController < ApplicationController
  before_action :set_memo , only: [:show, :edit, :update, :destroy]
  
  def index
    @memos = current_user.memos.order(created_at: :desc)
  end

  def show
  end

  def new
    @memo = Memo.new
  end

  def edit
  end

  def create
    memo = Memo.new(memo_params.merge(user_id: current_user.id))
    memo.save!
    redirect_to memos_url, success: "メモ：タイトル「#{memo.title}」を保存しました。"
  end

  def update
    @memo.update!(memo_params)
    redirect_to memos_url, success: "メモ：タイトル「#{@memo.title}」を更新しました。"
  end

  def destroy
    @memo.destroy
    redirect_to memos_url, success: "メモ：タイトル「#{@memo.title}」を削除しました。"
  end
  private

  def memo_params
    params.require(:memo).permit(:title, :description)
  end

  def set_memo
    @memo = current_user.memos.find(params[:id])
  end
end
