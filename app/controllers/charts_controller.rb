class ChartsController < ApplicationController
  before_action :set_regit
  before_action :set_chart, only: [:show, :edit, :update, :destroy]

  # GET regits/1/charts
  def index
    @charts = @regit.charts
  end

  # GET regits/1/charts/1
  def show
  end

  # GET regits/1/charts/new
  def new
    @chart = @regit.charts.build
  end

  # GET regits/1/charts/1/edit
  def edit
  end

  # POST regits/1/charts
  def create
    @chart = @regit.charts.build(chart_params)

    if @chart.save
      redirect_to([@chart.regit, @chart], notice: 'Chart was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT regits/1/charts/1
  def update
    if @chart.update(chart_params)
      redirect_to([@chart.regit, @chart], notice: 'Chart was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE regits/1/charts/1
  def destroy
    @chart.destroy

    redirect_to regit_charts_url(@regit)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regit
      @regit = Regit.find(params[:regit_id])
    end

    def set_chart
      @chart = @regit.charts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chart_params
      params.require(:chart).permit(:t_date, :subj, :obj)
    end
end
