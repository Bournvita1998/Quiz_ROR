class CricketsController < ApplicationController
  before_action :set_cricket, only: [:show, :edit, :update, :destroy]

  # GET /crickets
  # GET /crickets.json
  def index
    @crickets = Cricket.all
  end

  # GET /crickets/1
  # GET /crickets/1.json
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
    if(@cricket.ans == string)
      @a=1
    # else
    #   @a=2
    end

  end

  # GET /crickets/new
  def new
    @cricket = Cricket.new
  end

  # GET /crickets/1/edit
  def edit
  end

  # POST /crickets
  # POST /crickets.json
  def create
    @cricket = Cricket.new(cricket_params)

    respond_to do |format|
      if @cricket.save
        format.html { redirect_to @cricket, notice: 'Cricket was successfully created.' }
        format.json { render :show, status: :created, location: @cricket }
      else
        format.html { render :new }
        format.json { render json: @cricket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crickets/1
  # PATCH/PUT /crickets/1.json
  def update
    respond_to do |format|
      if @cricket.update(cricket_params)
        format.html { redirect_to @cricket, notice: 'Cricket was successfully updated.' }
        format.json { render :show, status: :ok, location: @cricket }
      else
        format.html { render :edit }
        format.json { render json: @cricket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crickets/1
  # DELETE /crickets/1.json
  def destroy
    @cricket.destroy
    respond_to do |format|
      format.html { redirect_to crickets_url, notice: 'Cricket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def test

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cricket
      @cricket = Cricket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cricket_params
      params.require(:cricket).permit(:Q_type, :Ques, :opt1, :opt2, :opt3, :opt4, :ans)
    end
end
