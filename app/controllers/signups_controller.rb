class SignupsController < ApplicationController
  before_action :set_signup, only: [:show, :edit, :update, :destroy]
    
    def index 
      @signups = Singup.all
    end

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end
    
    def destroy
    end


  private

  def signup_params
    params.require(:signup).permit(:activity, :camper, :time)
  end

  def set_signup
    @signup = Singup.find(params[:id])
  end

end
