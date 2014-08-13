class BbsThreadsController < ApplicationController
  def index
    @bbs_threads = BbsThread.order("id DESC")
  end

  def show
    @bbs_thread = BbsThread.find(params[:id])
  end

  def new
    @bbs_thread = BbsThread.new
  end

  def edit
    @bbs_thread = BbsThread.find(params[:id])
  end

  def create
    @bbs_thread = BbsThread.new(params[:bbs_thread])


    redirect_to root_path and return if @bbs_thread.save
    render action: "new"
  end

  def update
    @bbs_thread = BbsThread.find(params[:id])
    redirect_to root_path and return if @bbs_thread.update_attributes(params[:bbs_thread])
    render action: "edit"
  end

  def destroy
    @bbs_thread = BbsThread.find(params[:id])
    @bbs_thread.destroy

    redirect_to root_path
  end
end
