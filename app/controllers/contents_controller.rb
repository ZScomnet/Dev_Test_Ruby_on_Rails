class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :update, :destroy]
  before_action :authorized  
  # show all
  def index
    @contents = Content.where(project_id: params[:project_id])
    if @contents.nil?
       render json: [message: "NoexistContent"]
    else
       render json: [message: "success", result: @contents]
    end
  end
  # show specific content
  def show
    @content = Content.find(params[:id])
    if @content.nil?
       render json: [message: "NoexistContent"]
    else
       render json: [message: "success", result: @content] 
    end
  end

  def create
    user_id = decoded_token[0]['user_id']
    @user = User.find(user_id)
    @project = Project.find(params[:project_id])
    if @user == @project.user
      @content = Content.new
      @content.title = params[:title]
      @content.body = params[:body]
      @content.project = @project
      if @content.save
        render json: [message: "success",result: @content]
      else
        render json: [message: "Failed", result: @content]
      end
    else
      render json: {message: "You don't have permission", result: "Failed"}
    end
  end
  
  def update
     user_id = decoded_token[0]['user_id']
     @user = User.find(user_id)
     @content = Content.find(params[:id])
     @project = Project.find(@content.project_id)
     if @user == @project.user
       @content.title = params[:title]
       @content.body = params[:body]
       if @content.save
         render json: [message: "success", result: @content]
       else
         render json: [message: "failed"]
       end
     else
       render json: [message: "You can update only own comment"]
     end
  end

  def destroy
     user_id = decoded_token[0]['user_id']
     @user = User.find(user_id)
     @content = Content.find(params[:id])
     @project = Project.find(@content.project_id)
     if @user == @project.user
       @content.destroy
       render json: [message: "success"]
     else
       render json: [message: "failed"]
     end       
  end
  private
    def set_content
       @content = Content.find(params[:id])
    end
    def set_project
       @project = Project.find(params[:project_id])
    end
    def content_params
       params.require(:content).permit(:title, :body)
    end
end
