class CompteBancairesController < ApplicationController
  # GET /compte_bancaires
  # GET /compte_bancaires.json
  def index
    @compte_bancaires = CompteBancaire.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json :@compte_bancaires }
    end
  end

  # GET /compte_bancaires/1
  # GET /compte_bancaires/1.json
  def show
    @compte_bancaire = CompteBancaire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json :@compte_bancaire }
    end
  end

  # GET /compte_bancaires/new
  # GET /compte_bancaires/new.json
  def new
    @compte_bancaire = CompteBancaire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json :@compte_bancaire }
    end
  end

  # GET /compte_bancaires/1/edit
  def edit
    @compte_bancaire = CompteBancaire.find(params[:id])
  end

  # POST /compte_bancaires
  # POST /compte_bancaires.json
  def create
    @compte_bancaire = CompteBancaire.new(params[:compte_bancaire])

    respond_to do |format|
      if @compte_bancaire.save
        format.html { redirect_to @compte_bancaire, :notice => 'Compte bancaire was successfully created.' }
        format.json { render json :@compte_bancaire, :status => created, :location => :@compte_bancaire }
      else
        format.html { render action :"new" }
        format.json { render json :@compte_bancaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /compte_bancaires/1
  # PUT /compte_bancaires/1.json
  def update
    @compte_bancaire = CompteBancaire.find(params[:id])

    respond_to do |format|
      if @compte_bancaire.update_attributes(params[:compte_bancaire])
        format.html { redirect_to @compte_bancaire, :notice => :'Compte bancaire was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action :"edit" }
        format.json { render json :@compte_bancaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /compte_bancaires/1
  # DELETE /compte_bancaires/1.json
  def destroy
    @compte_bancaire = CompteBancaire.find(params[:id])
    @compte_bancaire.destroy

    respond_to do |format|
      format.html { redirect_to compte_bancaires_url }
      format.json { head :ok }
    end
  end
end
