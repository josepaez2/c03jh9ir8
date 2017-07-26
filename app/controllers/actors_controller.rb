class ActorsController < ApplicationController
	
	def index
    @actors = Actor.all
  end

	def show
    @actor = Actor.find(params[:id])
  end

 	def create
	  @actor = Actor.new(actor_params)
	  if @actor.save 
	  	# redirect_to show_actor_path(@actor)
	  	redirect_to root_path
		else
			render'new'
		end
	end

  def new
  	@actor = Actor.new
  end

		private
	  def actor_params
	    params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
	  end
end
