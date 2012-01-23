class TiersController < ApplicationController
  # GET /tiers
  # GET /tiers.json
  def index
    @tiers = Tier.where(:type => params[:type])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tiers }
    end
  end

  # GET /tiers/1
  # GET /tiers/1.json
  def show
    @tier = Tier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tier }
    end
  end

  # GET /tiers/new
  # GET /tiers/new.json
  def new
    @tier = params[:type].constantize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tier }
    end
  end

  # GET /tiers/1/edit
  def edit
    @tier = Tier.find(params[:id])
  end

  # POST /tiers
  # POST /tiers.json
  def create
    @tier = params[:type].constantize.new(params[:tier])

    respond_to do |format|
      if @tier.save
        format.html { redirect_to @tier, notice: 'Tier was successfully created.' }
        format.json { render json: @tier, status: :created, location: @tier }
      else
        format.html { render action: "new" }
        format.json { render json: @tier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tiers/1
  # PUT /tiers/1.json
  def update
    @tier = Tier.find(params[:id])

    respond_to do |format|
      if @tier.update_attributes(params[:tier])
        format.html { redirect_to @tier, notice: 'Tier was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiers/1
  # DELETE /tiers/1.json
  def destroy
    @tier = Tier.find(params[:id])
    @tier.destroy

    respond_to do |format|
      format.html { redirect_to [params[:type].downcase.pluralize] }
      format.json { head :ok }
    end
  end
end
