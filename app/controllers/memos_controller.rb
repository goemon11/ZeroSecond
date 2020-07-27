class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def new
    @memo = Memo.new
  end

  def edit
  end

  def create
    memo = Memo.new(memo_params)
    memo.save!
    redirect_to memos_url, notice: "メモ「#{memo.title}」を保存しました。"
  end

  private

  def memo_params
    params.require(:memo).permit(:title, :description)
  end

end
