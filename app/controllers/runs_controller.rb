class RunsController < ApplicationController
  before_action :set_run, only: [:show]

  def show
  end

  def index
    @runs = Run.all
  end

  def new
    @run = Run.new
  end

  def create
    @run = Run.new(run_params)
    if @run.save
      redirect_to @run, notice: "Votre itinéraire a bien été ajouté"
    else
      render :new
    end
  end

  private

  def set_run
    @run = Run.find(params[:id])
  end

  def run_params
    params.require(:run).permit(  :name,
                                  :technic,
                                  :physical,
                                  :engagement,
                                  :run_type,
                                  :best_snow,
                                  :best_time,
                                  :expo,
                                  :alt_start,
                                  :alt_finish,
                                  :description,
                                  :area_id,
                                  :resort_id
                                )
  end
end
