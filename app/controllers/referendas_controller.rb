class ReferendasController < ApplicationController
  before_action :set_referenda, only: %i[ show edit update destroy ]

  # GET /referendas or /referendas.json
  def index
    @referendas = Referenda.all
    @person_options = Person.all.map { |person| [person.name, person.id] }
    @vote = Vote.new
    @new_voter = Person.new
    @new_referenda = Referenda.new
  end

  # GET /referendas/1 or /referendas/1.json
  def show
    
  end

  # GET /referendas/new
  def new
    @referenda = Referenda.new
  end

  # GET /referendas/1/edit
  def edit
  end

  # POST /referendas or /referendas.json
  def create
    @referenda = Referenda.new(referenda_params)

    respond_to do |format|
      if @referenda.save
        format.html { redirect_to referendas_url, notice: "Referenda was successfully created." }
        format.json { render :show, status: :created, location: @referenda }
      else
        format.html { redirect_to referendas_url, status: :unprocessable_entity, alert: "Referenda could not be saved." }
        format.json { render json: @referenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referendas/1 or /referendas/1.json
  def update
    respond_to do |format|
      if @referenda.update(referenda_params)
        format.html { redirect_to referenda_url(@referenda), notice: "Referenda was successfully updated." }
        format.json { render :show, status: :ok, location: @referenda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @referenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referendas/1 or /referendas/1.json
  def destroy
    @referenda.destroy

    respond_to do |format|
      format.html { redirect_to referendas_url, notice: "Referenda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referenda
      @referenda = Referenda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def referenda_params
      params.require(:referenda).permit(:question)
    end
end
