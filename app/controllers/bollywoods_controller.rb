class BollywoodsController < ApplicationController
  before_action :set_bollywood, only: [:show, :edit, :update, :destroy]

  # GET /bollywoods
  # GET /bollywoods.json
  def index
    @bollywoods = Bollywood.all
  end

  # GET /bollywoods/1
  # GET /bollywoods/1.json
  def show
    string = ''
    if(params[:cr1])
      string+='a'
    end
    if(params[:cr2])
      string+='b'
    end

    if(params[:cr3])
      string+='c'
    end

    if(params[:cr4])
      string+='d'
    end

    if(params[:cq1])
      string = params[:cq1]
    end

    @a=0
    if(@bollywood.ans == string)
      @a=1
    # else
    #   @a=2
    end
  end

  # GET /bollywoods/new
  def new
    @bollywood = Bollywood.new
  end

  # GET /bollywoods/1/edit
  def edit
  end

  # POST /bollywoods
  # POST /bollywoods.json
  def create
    @bollywood = Bollywood.new(bollywood_params)

    respond_to do |format|
      if @bollywood.save
        format.html { redirect_to @bollywood, notice: 'Bollywood was successfully created.' }
        format.json { render :show, status: :created, location: @bollywood }
      else
        format.html { render :new }
        format.json { render json: @bollywood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bollywoods/1
  # PATCH/PUT /bollywoods/1.json
  def update
    respond_to do |format|
      if @bollywood.update(bollywood_params)
        format.html { redirect_to @bollywood, notice: 'Bollywood was successfully updated.' }
        format.json { render :show, status: :ok, location: @bollywood }
      else
        format.html { render :edit }
        format.json { render json: @bollywood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bollywoods/1
  # DELETE /bollywoods/1.json
  def destroy
    @bollywood.destroy
    respond_to do |format|
      format.html { redirect_to bollywoods_url, notice: 'Bollywood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bollywood
      @bollywood = Bollywood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bollywood_params
      params.require(:bollywood).permit(:Q_type, :Ques, :opt1, :opt2, :opt3, :opt4, :ans)
    end
end
