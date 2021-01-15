class CampersController < ApplicationController
    before_action :set_camper, only: [:show, :edit, :update, :destroy]

    def index
        @campers = Camper.all
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

    def camper_params
        params.require(:camper).permit(:name, :age)
    end

    def set_camper
        @camper = Camper.find(params[:id])
    end
end
