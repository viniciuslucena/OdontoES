class RecepcionistasController < ApplicationController
  before_action :set_recepcionista, only: %i[ show edit update destroy ]

  # GET /recepcionistas or /recepcionistas.json
  def index
    @recepcionistas = Recepcionista.all
  end

  # GET /recepcionistas/1 or /recepcionistas/1.json
  def show
  end

  # GET /recepcionistas/new
  def new
    @recepcionista = Recepcionista.new
  end

  # GET /recepcionistas/1/edit
  def edit
  end

  # POST /recepcionistas or /recepcionistas.json
  def create
    @recepcionista = Recepcionista.new(recepcionista_params)

    respond_to do |format|
      if @recepcionista.save
        format.html { redirect_to recepcionista_url(@recepcionista), notice: "Recepcionista was successfully created." }
        format.json { render :show, status: :created, location: @recepcionista }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recepcionista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recepcionistas/1 or /recepcionistas/1.json
  def update
    respond_to do |format|
      if @recepcionista.update(recepcionista_params)
        format.html { redirect_to recepcionista_url(@recepcionista), notice: "Recepcionista was successfully updated." }
        format.json { render :show, status: :ok, location: @recepcionista }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recepcionista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepcionistas/1 or /recepcionistas/1.json
  def destroy
    @recepcionista.destroy

    respond_to do |format|
      format.html { redirect_to recepcionistas_url, notice: "Recepcionista was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepcionista
      @recepcionista = Recepcionista.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recepcionista_params
      params.require(:recepcionista).permit(:nome, :cpf, :email, :password, :password_confirmation)
    end
end
