class RunsController < ApplicationController
  before_action :set_run, only: [:show]

  def show
  end

  def index
    @run = Run.all
  end

  def new
    @run = Run.new
  end

  private

  def set_run
    @run = Run.find(params[:id])
  end
end
