class WouldsController < ApplicationController
  # GET /woulds
  # GET /woulds.json
  def index
    @woulds = Would.all.reverse

    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @woulds }
    end
  end

  # GET /woulds/1
  # GET /woulds/1.json
  def show
    @would = Would.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @would }
    end
  end

  # GET /woulds/new
  # GET /woulds/new.json
  def new
    @would = Would.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @would }
    end
  end

  # GET /woulds/1/edit
  def edit
    @would = Would.find(params[:id])
  end

  # POST /woulds
  # POST /woulds.json
  def create
    @would = Would.new(params[:would])

    respond_to do |format|
      if @would.save
        format.html { redirect_to woulds_path, notice: 'Would was successfully created.' }
        format.json { render json: @would, status: :created, location: @would }
      else
        format.html { render action: "new" }
        format.json { render json: @would.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /woulds/1
  # PUT /woulds/1.json
  def update
    @would = Would.find(params[:id])

    respond_to do |format|
      if @would.update_attributes(params[:would])
        format.html { redirect_to @would, notice: 'Would was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @would.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /woulds/1
  # DELETE /woulds/1.json
  def destroy
    @would = Would.find(params[:id])
    @would.destroy

    respond_to do |format|
      format.html { redirect_to woulds_url }
      format.json { head :no_content }
    end
  end
end
