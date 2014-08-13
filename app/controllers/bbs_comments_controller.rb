class BbsCommentsController < ApplicationController
  # GET /bbs_comments
  # GET /bbs_comments.json
  def index
    @bbs_comments = BbsComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bbs_comments }
    end
  end

  # GET /bbs_comments/1
  # GET /bbs_comments/1.json
  def show
    @bbs_comment = BbsComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bbs_comment }
    end
  end

  # GET /bbs_comments/new
  # GET /bbs_comments/new.json
  def new
    @bbs_comment = BbsComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bbs_comment }
    end
  end

  # GET /bbs_comments/1/edit
  def edit
    @bbs_comment = BbsComment.find(params[:id])
  end

  # POST /bbs_comments
  # POST /bbs_comments.json
  def create
    @bbs_comment = BbsComment.new(params[:bbs_comment])

    respond_to do |format|
      if @bbs_comment.save
        format.html { redirect_to @bbs_comment, notice: 'Bbs comment was successfully created.' }
        format.json { render json: @bbs_comment, status: :created, location: @bbs_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @bbs_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bbs_comments/1
  # PUT /bbs_comments/1.json
  def update
    @bbs_comment = BbsComment.find(params[:id])

    respond_to do |format|
      if @bbs_comment.update_attributes(params[:bbs_comment])
        format.html { redirect_to @bbs_comment, notice: 'Bbs comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bbs_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bbs_comments/1
  # DELETE /bbs_comments/1.json
  def destroy
    @bbs_comment = BbsComment.find(params[:id])
    @bbs_comment.destroy

    respond_to do |format|
      format.html { redirect_to bbs_comments_url }
      format.json { head :no_content }
    end
  end
end
