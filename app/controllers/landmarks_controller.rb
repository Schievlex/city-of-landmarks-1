class LandmarksController < ApplicationController
	 def index
	 @landmarks = Landmark.all
	 end

	 def show
    @landmark = Landmark.find(params[:id])
  	end

  	def new
    @landmark = Landmark.new
   end

   def create
    #landmark_params = params.require(:landmark).permit(:name, :kind, :image_url, :build_year, :entrance_fee)

    @landmark = Landmark.new(landmark_params)

    if @landmark.save
       redirect_to @landmark
    else
       render 'new'
    end
  	end

  	def edit
    @landmark = Landmark.find(params[:id])
  	end

  def update
    @landmark = Landmark.find(params[:id])

    #landmark_params = params.require(:landmark).permit(:name, :kind, :image_url, :build_year, :entrance_fee)

    if @landmark.update_attributes(landmark_params)
      redirect_to @landmark
    else
      render 'edit'
    end
  end

   def destroy
    @landmark = Landmark.find(params[:id])

    @landmark.destroy

    redirect_to landmarks_path
  end


	private

  def landmark_params
  landmark_params = params.require(:landmark).permit(:name, :kind, :image_url, :build_year, :entrance_fee)
  end

end
