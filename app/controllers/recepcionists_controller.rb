class RecepcionistsController < ApplicationController
  before_action :set_recepcionist, only: %i[ show edit update destroy ]

  # GET /recepcionists or /recepcionists.json
  def index
    @recepcionists = Recepcionist.all
  end

  # GET /recepcionists/1 or /recepcionists/1.json
  def show
  end

  # GET /recepcionists/new
  def new
    @recepcionist = Recepcionist.new
  end

  # GET /recepcionists/1/edit
  def edit
  end

  # POST /recepcionists or /recepcionists.json
  def create
    @recepcionist = Recepcionist.new(recepcionist_params)

    respond_to do |format|
      if @recepcionist.save
        format.html { redirect_to recepcionist_url(@recepcionist), notice: "Recepcionist was successfully created." }
        format.json { render :show, status: :created, location: @recepcionist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recepcionist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recepcionists/1 or /recepcionists/1.json
  def update
    respond_to do |format|
      if @recepcionist.update(recepcionist_params)
        format.html { redirect_to recepcionist_url(@recepcionist), notice: "Recepcionist was successfully updated." }
        format.json { render :show, status: :ok, location: @recepcionist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recepcionist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepcionists/1 or /recepcionists/1.json
  def destroy
    @recepcionist.destroy

    respond_to do |format|
      format.html { redirect_to recepcionists_url, notice: "Recepcionist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepcionist
      @recepcionist = Recepcionist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recepcionist_params
      params.require(:recepcionist).permit(:nome)
    end
end
