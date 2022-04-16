class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show update destroy ]
  before_action :authorized

  # GET /projects
  def index
    @projects = Project.all
    render json: @projects
  end

  # GET /projects/:id
  def show
    @project = Project.find(params[:id])
    render json: @project
  end
  # GET /projects/my_projects
  def own_show
    user_id = decoded_token[0]['user_id']
    projects = Project.where( :user_id => user_id)
    dto = Array.new
    projects.each do |i|
      data = Hash.new
      data['id'] = i.id
      data['user_id'] = user_id
      data['title'] = i.title
      data['description'] = i.description
      data['location'] = i.location
      if i.type == 0
        data['type'] = "in_house"
      elsif i.type == 1
        data['type'] = "external"
      else
        data['type'] = "international"
      end
      data['created_at'] = i.created_at
      data['updated_at'] = i.updated_at
      data['thumbnail'] = i.thumbnail
      dto.push(data)
    end    
    render json: dto
  end

  # POST /projects
  def create
#    @project = Project.new(project_params)
    @project = Project.new
    user_id = decoded_token[0]['user_id']
    @user = User.find(user_id)
    @project.user = @user
    @project.title = params[:title]
    @project.description = params[:description]
    t = {"in_house" => 0,"external" => 1,"international" => 2}
    @project.type = t[params[:type]]
    @project.location = params[:location]
    @project.thumbnail = params[:thumbnail]
    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    user_id = decoded_token[0]['user_id']
    @user = User.find(user_id)
    @project = Project.find(params[:id])
    if @user  == @project.user
       if params[:title] != nil
         @project.title = params[:title]
       end
       if params[:description] != nil
         @project.description = params[:description]
       end
       if params[:type] != nil
         @project.type = params[:type]
       end
       if params[:location] != nil
         @project.location = params[:location]
       end
       if params[:thumbnail] != nil
         @project.thumbnail = params[:thumbnail]
       end
       @project.updated_at = Time.current
       @project.save
       render json: {message: "success", result: @project}
    else
       render json: {message: "You can update only own project"}
    end
  end

  # DELETE /projects/1
  def destroy
    @project = Project.find(params[:id])
    user_id = decoded_token[0]['user_id']
    @user = User.find(user_id)
    if @user == @project.user
      @project.destroy
      render json: {message: "Delete complete"}
    else
      render json: {message: "You can delete only own project"}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :description, :type, :location, :thumbnail)
    end
end
