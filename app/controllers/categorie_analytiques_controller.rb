class CategorieAnalytiquesController < ApplicationController
  # GET /categorie_analytiques
  # GET /categorie_analytiques.json
  def index
    @categorie_analytiques = CategorieAnalytique.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categorie_analytiques }
    end
  end

  # GET /categorie_analytiques/1
  # GET /categorie_analytiques/1.json
  def show
    @categorie_analytique = CategorieAnalytique.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @categorie_analytique }
    end
  end

  # GET /categorie_analytiques/new
  # GET /categorie_analytiques/new.json
  def new
    @categorie_analytique = CategorieAnalytique.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @categorie_analytique }
    end
  end

  # GET /categorie_analytiques/1/edit
  def edit
    @categorie_analytique = CategorieAnalytique.find(params[:id])
  end

  # POST /categorie_analytiques
  # POST /categorie_analytiques.json
  def create
    @categorie_analytique = CategorieAnalytique.new(params[:categorie_analytique])

    respond_to do |format|
      if @categorie_analytique.save
        format.html { redirect_to @categorie_analytique, notice: 'Categorie analytique was successfully created.' }
        format.json { render json: @categorie_analytique, status: :created, location: @categorie_analytique }
      else
        format.html { render action: "new" }
        format.json { render json: @categorie_analytique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categorie_analytiques/1
  # PUT /categorie_analytiques/1.json
  def update
    @categorie_analytique = CategorieAnalytique.find(params[:id])

    respond_to do |format|
      if @categorie_analytique.update_attributes(params[:categorie_analytique])
        format.html { redirect_to @categorie_analytique, notice: 'Categorie analytique was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @categorie_analytique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie_analytiques/1
  # DELETE /categorie_analytiques/1.json
  def destroy
    @categorie_analytique = CategorieAnalytique.find(params[:id])
    @categorie_analytique.destroy

    respond_to do |format|
      format.html { redirect_to categorie_analytiques_url }
      format.json { head :ok }
    end
  end
end
