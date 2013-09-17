class MealSideTypesController < ApplicationController
  before_action :set_meal_side_type, only: [:show, :edit, :update, :destroy]

  # GET /meal_side_types
  # GET /meal_side_types.json
  def index
    @meal_side_types = MealSideType.all
  end

  # GET /meal_side_types/1
  # GET /meal_side_types/1.json
  def show
  end

  # GET /meal_side_types/new
  def new
    @meal_side_type = MealSideType.new
  end

  # GET /meal_side_types/1/edit
  def edit
  end

  # POST /meal_side_types
  # POST /meal_side_types.json
  def create
    @meal_side_type = MealSideType.new(meal_side_type_params)

    respond_to do |format|
      if @meal_side_type.save
        format.html { redirect_to @meal_side_type, notice: 'Meal side type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @meal_side_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @meal_side_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meal_side_types/1
  # PATCH/PUT /meal_side_types/1.json
  def update
    respond_to do |format|
      if @meal_side_type.update(meal_side_type_params)
        format.html { redirect_to @meal_side_type, notice: 'Meal side type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @meal_side_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_side_types/1
  # DELETE /meal_side_types/1.json
  def destroy
    @meal_side_type.destroy
    respond_to do |format|
      format.html { redirect_to meal_side_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_side_type
      @meal_side_type = MealSideType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_side_type_params
      params[:meal_side_type]
    end
end
