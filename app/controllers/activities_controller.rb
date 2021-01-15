class ActivitiesController < ApplicationController
    before_action :set_activity, only: [:show, :edit, :update, :destroy]
    
    def index
        @activities = Activity.all
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

    def activity_params
        params.require(:activity).permit(:name, :difficulty)
    end

    def set_activity
        @activity = Activity.find(params[:id])
    end
    
end
