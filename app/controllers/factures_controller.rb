class FacturesController < ApplicationController

before_filter :sous_classes, :only => [:new,:edit]

  def sous_classes
    @sous_classes = CategorieComptable.where(:niveau => 2)
  end
 
  # GET /factures
  # GET /factures.json
  def index
    case params[:controller]
      when "facture_emises" 
        @factures = FactureEmise.all
      when "facture_recues"
        @factures = FactureRecue.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @factures }
    end
  end

  # GET /factures/1
  # GET /factures/1.json
  def show
    @facture = Facture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facture }
    end
  end

  # GET /factures/new
  # GET /factures/new.json
  def new
    case params[:controller]
      when "facture_recues"
        @facture = FactureRecue.new
      when "facture_emises"
        @facture = FactureEmise.new
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facture }
    end
  end

  # GET /factures/1/edit
  def edit
    @facture = Facture.find(params[:id])
  end

  # POST /factures
  # POST /factures.json

  # PUT /factures/1
  # PUT /factures/1.json

  # DELETE /factures/1
  # DELETE /factures/1.json
  def destroy
    @facture = Facture.find(params[:id])
    @facture.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'La facture a bien ete supprimee' }
      format.json { head :ok }
    end
  end
end
