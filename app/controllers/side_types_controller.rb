class SideTypesController < ApplicationController
  before_action :set_side_type, only: [:show, :edit, :update, :destroy]

  # GET /side_types
  # GET /side_types.json
  def index
    @side_types = SideType.all
  end

  # GET /side_types/1
  # GET /side_types/1.json
  def show
  end

  # GET /side_types/new
  def new
    @side_type = SideType.new
  end

  # GET /side_types/1/edit
  def edit
  end

  # POST /side_types
  # POST /side_types.json
  def create
    @side_type = SideType.new(side_type_params)

    respond_to do |format|
      if @side_type.save
        format.html { redirect_to @side_type, notice: 'Side type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @side_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @side_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /side_types/1
  # PATCH/PUT /side_types/1.json
  def update
    respond_to do |format|
      if @side_type.update(side_type_params)
        format.html { redirect_to @side_type, notice: 'Side type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @side_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /side_types/1
  # DELETE /side_types/1.json
  def destroy
    @side_type.destroy
    respond_to do |format|
      format.html { redirect_to side_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_side_type
      @side_type = SideType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def side_type_params
      params[:side_type]
    end
end
