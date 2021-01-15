class CampersController < ApplicationController
    before_action :set_camper, only: [:show, :edit, :update, :destroy]

    def index
        @campers = Camper.all
    end

    def new
        @camper = Camper.new
    end

    def create
        new_camper = Camper.create(camper_params(:name, :age))
        redirect_to camper_path(new_camper)
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

    def camper_params(*args)
        params.require(:camper).permit(*args)
    end

    def set_camper
        @camper = Camper.find(params[:id])
    end
end
