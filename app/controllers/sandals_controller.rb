class SandalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :edit, :update]
  def index
    @sandals = Sandal.all
  end
 def show
 end


  def new
    @sandal = Sandal.new
  end

  def create
    @sandal = Sandal.create(sandal_params)
    redirect_to sandals_path
  end

  def edit
    @sandal = Sandal.find(params[:id])
  end

  def update
    @sandal = Sandal.find(params[:id])
    @sandal.update(sandal_params)
    redirect_to sandals_path
  end

  def destroy
    @sandal = Sandal.find(params[:id])
    @sandal.destroy
    redirect_to sandals_path
  end

  private
    def sandal_params
      params.require(:sandal).permit(:model, :price, :description)
    end
end
