class SignupsController < ApplicationController
  before_action :set_signup, only: [:show, :edit, :update, :destroy]
    
    def index 
      @signups = Singup.all
    end

    def new
      @signup = Signup.new
    end

    def create
      new_signup = Signup.create(signup_params(:activity_id, :camper_id, :time))
      redirect_to camper_path(new_signup.camper_id)
    end

    def show
    end

    def edit
    end

    def update
      new_signup = Signup.create(signup_params(:time))
    end
    
    def destroy
    end


  private

  def signup_params(*args)
    params.require(:signup).permit(*args)
  end

  def set_signup
    @signup = Singup.find(params[:id])
  end

end
