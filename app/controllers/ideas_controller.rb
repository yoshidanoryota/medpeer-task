class IdeasController < ApplicationController

  def index
    @ideas = Idea.includes(:category)
    

    date = []
    @ideas.each do |idea|
      date << {
       id: idea.id, category:idea.category.name , body: idea.body, created_at: (idea.created_at).to_i
      }
    end


    if @ideas
      render json: date
    else
      render status: 404, json: { status: 404 }
    end


  end
  
  def create
    @idea = IdeaForm.new(idea_params)

    if @idea.save
      render status: 201, json: { status: 201 }
    else
      render status: 422, json: { status: 422 }
    end

  end

  
  private

  def idea_params
    params.permit(:body,:name,:category_id)
  end

end
