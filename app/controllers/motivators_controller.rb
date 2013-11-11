class MotivatorsController < ApplicationController
  # GET /motivators
  # GET /motivators.json
  def index
    @motivators = Motivator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @motivators }
    end
  end

  # GET /motivators/1
  # GET /motivators/1.json
  def show
    @motivator = Motivator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @motivator }
    end
  end

  # GET /motivators/new
  # GET /motivators/new.json
  def new
    @motivator = Motivator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @motivator }
    end
  end

  # GET /motivators/1/edit
  def edit
    @motivator = Motivator.find(params[:id])
  end

  # POST /motivators
  # POST /motivators.json
  def create
    @motivator = Motivator.new(params[:motivator])

    respond_to do |format|
      if @motivator.save
        format.html { redirect_to @motivator, notice: 'Motivator was successfully created.' }
        format.json { render json: @motivator, status: :created, location: @motivator }
      else
        format.html { render action: "new" }
        format.json { render json: @motivator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /motivators/1
  # PUT /motivators/1.json
  def update
    @motivator = Motivator.find(params[:id])

    respond_to do |format|
      if @motivator.update_attributes(params[:motivator])
        format.html { redirect_to @motivator, notice: 'Motivator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @motivator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motivators/1
  # DELETE /motivators/1.json
  def destroy
    @motivator = Motivator.find(params[:id])
    @motivator.destroy

    respond_to do |format|
      format.html { redirect_to motivators_url }
      format.json { head :no_content }
    end
  end
end
