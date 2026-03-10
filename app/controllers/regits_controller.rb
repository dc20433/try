class RegitsController < ApplicationController
  before_action :set_regit, only: %i[ show edit update destroy ]

  # GET /regits or /regits.json
  def index
    @regits = Regit.all
  end

  # GET /regits/1 or /regits/1.json
  def show
  end

  # GET /regits/new
  def new
    @regit = Regit.new
  end

  # GET /regits/1/edit
  def edit
  end

  # POST /regits or /regits.json
  def create
    @regit = Regit.new(regit_params)

    respond_to do |format|
      if @regit.save
        format.html { redirect_to @regit, notice: "Regit was successfully created." }
        format.json { render :show, status: :created, location: @regit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @regit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regits/1 or /regits/1.json
  def update
    respond_to do |format|
      if @regit.update(regit_params)
        format.html { redirect_to @regit, notice: "Regit was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @regit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @regit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regits/1 or /regits/1.json
  def destroy
    @regit.destroy!

    respond_to do |format|
      format.html { redirect_to regits_path, notice: "Regit was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regit
      @regit = Regit.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def regit_params
      params.expect(regit: [ :name, :gender, :dob ])
    end
end
