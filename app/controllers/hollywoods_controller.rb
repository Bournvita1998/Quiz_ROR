class HollywoodsController < ApplicationController
  before_action :set_hollywood, only: [:show, :edit, :update, :destroy]

  # GET /hollywoods
  # GET /hollywoods.json
  def index
    @hollywoods = Hollywood.all
  end

  # GET /hollywoods/1
  # GET /hollywoods/1.json
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

  # GET /hollywoods/new
  def new
    @hollywood = Hollywood.new
  end

  # GET /hollywoods/1/edit
  def edit
  end

  # POST /hollywoods
  # POST /hollywoods.json
  def create
    @hollywood = Hollywood.new(hollywood_params)

    respond_to do |format|
      if @hollywood.save
        format.html { redirect_to @hollywood, notice: 'Hollywood was successfully created.' }
        format.json { render :show, status: :created, location: @hollywood }
      else
        format.html { render :new }
        format.json { render json: @hollywood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hollywoods/1
  # PATCH/PUT /hollywoods/1.json
  def update
    respond_to do |format|
      if @hollywood.update(hollywood_params)
        format.html { redirect_to @hollywood, notice: 'Hollywood was successfully updated.' }
        format.json { render :show, status: :ok, location: @hollywood }
      else
        format.html { render :edit }
        format.json { render json: @hollywood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hollywoods/1
  # DELETE /hollywoods/1.json
  def destroy
    @hollywood.destroy
    respond_to do |format|
      format.html { redirect_to hollywoods_url, notice: 'Hollywood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hollywood
      @hollywood = Hollywood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hollywood_params
      params.require(:hollywood).permit(:Q_type, :Ques, :opt1, :opt2, :opt3, :opt4, :ans)
    end
end
