class AutoSchedulersController < ApplicationController
  before_action :set_auto_scheduler, only: [:show, :edit, :update, :destroy]

  # GET /auto_schedulers
  # GET /auto_schedulers.json
  def index
    @auto_schedulers = AutoScheduler.all
  end

  # GET /auto_schedulers/1
  # GET /auto_schedulers/1.json
  def show
  end

  # GET /auto_schedulers/new
  def new
    @auto_scheduler = AutoScheduler.new
  end

  # GET /auto_schedulers/1/edit
  def edit
  end

  # POST /auto_schedulers
  # POST /auto_schedulers.json
  def create
    @auto_scheduler = AutoScheduler.new(auto_scheduler_params)

    respond_to do |format|
      if @auto_scheduler.save
        format.html { redirect_to @auto_scheduler, notice: 'Auto scheduler was successfully created.' }
        format.json { render :show, status: :created, location: @auto_scheduler }
      else
        format.html { render :new }
        format.json { render json: @auto_scheduler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_schedulers/1
  # PATCH/PUT /auto_schedulers/1.json
  def update
    respond_to do |format|
      if @auto_scheduler.update(auto_scheduler_params)
        format.html { redirect_to @auto_scheduler, notice: 'Auto scheduler was successfully updated.' }
        format.json { render :show, status: :ok, location: @auto_scheduler }
      else
        format.html { render :edit }
        format.json { render json: @auto_scheduler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_schedulers/1
  # DELETE /auto_schedulers/1.json
  def destroy
    @auto_scheduler.destroy
    respond_to do |format|
      format.html { redirect_to auto_schedulers_url, notice: 'Auto scheduler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_scheduler
      @auto_scheduler = AutoScheduler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_scheduler_params
      params.require(:auto_scheduler).permit(:name, :escalation_series_id, :settings, :enabled).tap do |v|
          v[:settings] = YAML.load(v[:settings])
      end
    end
end
