class RubyqsController < ApplicationController
  before_action :set_rubyq, only: [:show, :edit, :update, :destroy]

  # GET /rubyqs
  # GET /rubyqs.json
  def index
    @rubyqs = Rubyq.all
  end

  # GET /rubyqs/1
  # GET /rubyqs/1.json
  def show
  end

  # GET /rubyqs/new
  def new
    @rubyq = Rubyq.new
  end

  # GET /rubyqs/1/edit
  def edit
  end

  # POST /rubyqs
  # POST /rubyqs.json
  def create
    @rubyq = Rubyq.new(rubyq_params)

    respond_to do |format|
      if @rubyq.save
        format.html { redirect_to @rubyq, notice: 'Rubyq was successfully created.' }
        format.json { render :show, status: :created, location: @rubyq }
      else
        format.html { render :new }
        format.json { render json: @rubyq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubyqs/1
  # PATCH/PUT /rubyqs/1.json
  def update
    respond_to do |format|
      if @rubyq.update(rubyq_params)
        format.html { redirect_to @rubyq, notice: 'Rubyq was successfully updated.' }
        format.json { render :show, status: :ok, location: @rubyq }
      else
        format.html { render :edit }
        format.json { render json: @rubyq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubyqs/1
  # DELETE /rubyqs/1.json
  def destroy
    @rubyq.destroy
    respond_to do |format|
      format.html { redirect_to rubyqs_url, notice: 'Rubyq was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubyq
      @rubyq = Rubyq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rubyq_params
      params.require(:rubyq).permit(:prompt_id, :group_id, :prompt1, :prompt2, :answer, :linear)
    end
end
