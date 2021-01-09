class ThingsController < ApplicationController
  before_action :set_thing, only: %i[show edit update destroy]

  def index
    @things = Thing.all
  end

  def show
  end

  def new
    @thing = Thing.new
  end

  def edit
  end

  def create
    @thing = Thing.new(thing_params)


    if @thing.save
      if request.xhr?
        flash.now[:notice]= "Good Job"
        render json: { success: true }
      else
        redirect_to @thing, notice: "Thing was successfully created."
      end
    else
      render :new
    end
  end

  def update
    if @thing.update(thing_params)
      redirect_to @thing, notice: "Thing was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @thing.destroy
    redirect_to things_url, notice: "Thing was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_thing
    @thing = Thing.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def thing_params
    params.require(:thing).permit(:accepted)
  end
end
