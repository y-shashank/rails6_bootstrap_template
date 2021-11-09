class KittiesController < ApplicationController
  before_action :set_kitty, only: %i[ show edit update destroy ]

  # GET /kitties or /kitties.json
  def index
    @kitties = Kitty.all
  end

  # GET /kitties/1 or /kitties/1.json
  def show
  end

  # GET /kitties/new
  def new
    @kitty = Kitty.new
  end

  # GET /kitties/1/edit
  def edit
  end

  # POST /kitties or /kitties.json
  def create
    @kitty = Kitty.new(kitty_params)

    respond_to do |format|
      if @kitty.save
        format.html { redirect_to @kitty, notice: "Kitty was successfully created." }
        format.json { render :show, status: :created, location: @kitty }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kitty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kitties/1 or /kitties/1.json
  def update
    respond_to do |format|
      if @kitty.update(kitty_params)
        format.html { redirect_to @kitty, notice: "Kitty was successfully updated." }
        format.json { render :show, status: :ok, location: @kitty }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kitty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitties/1 or /kitties/1.json
  def destroy
    @kitty.destroy
    respond_to do |format|
      format.html { redirect_to kitties_url, notice: "Kitty was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitty
      @kitty = Kitty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kitty_params
      params.require(:kitty).permit(:name)
    end
end
