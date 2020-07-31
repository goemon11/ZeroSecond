class MemosController < ApplicationController
  before_action :set_memo , only: [:show, :edit, :update, :destroy]
  
  def index
    @q = current_user.memos.ransack(params[:q])
    @memos = @q.result(distinct: true).page(params[:page])
  end

  def show
  end

  def new
    @memo = Memo.new
  end

  def edit
  end

  def create
    @memo = current_user.memos.new(memo_params)
    

    if params[:back].present?
      render :new
      return
    end
    
    if @memo.save
      redirect_to @memo, success: "メモ：タイトル「#{@memo.title}」を保存しました。"
    else  
      render :new
    end
  end

  def update
    @memo.update!(memo_params)
    redirect_to memos_url, success: "メモ：タイトル「#{@memo.title}」を更新しました。"
  end

  def destroy
    @memo.destroy
    redirect_to memos_url, success: "メモ：タイトル「#{@memo.title}」を削除しました。"
  end
  def confirm_new
    @memo = current_user.memos.new(memo_params)
    render :new unless @memo.valid?
  end
  private

  def memo_params
    params.require(:memo).permit(:title, :description, :image, :image_cache)
  end

  def set_memo
    @memo = current_user.memos.find(params[:id])
  end
end
