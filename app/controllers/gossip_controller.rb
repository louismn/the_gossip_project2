class GossipController < ApplicationController

	def new 
		@gossip = Gossip.new
	end


	def gossip_params
	  params.require(:gossip).permit(:title, :content, :anonymous_gossiper)
  
	end
	
	def create
    @gossip = Gossip.create(gossip_params)
    redirect_to gossip_path
  	end


  	def index
    @gossips = Gossip.all
  end

  

  def show
    @gossip = Gossip.find(params[:id])
  end


  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end

  def new
        @gossip = Gossip.new

  end

def edit
        @gossip = Gossip.new
  end


    def update

    @gossip = Gossip.find(params[:id])

    @gossip.update(gossip_params)
  end
end
