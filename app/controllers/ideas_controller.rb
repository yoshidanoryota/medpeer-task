class IdeasController < ApplicationController
  
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
