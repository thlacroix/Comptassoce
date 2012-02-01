class CategorieComptablesController < ApplicationController
  # GET /categorie_comptables
  # GET /categorie_comptables.json
  def index
    @classes = CategorieComptable.where(:niveau => 1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categorie_comptables }
    end
  end

  # GET /categorie_comptables/1
  # GET /categorie_comptables/1.json
  def show
    @categorie_comptable = CategorieComptable.find(params[:id])
    @parents = @categorie_comptable.parents

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @categorie_comptable }
    end
  end

  # GET /categorie_comptables/new
  # GET /categorie_comptables/new.json
  def new
    @categorie_comptable = CategorieComptable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @categorie_comptable }
    end
  end

  # GET /categorie_comptables/1/edit
  def edit
    @categorie_comptable = CategorieComptable.find(params[:id])
  end

  # POST /categorie_comptables
  # POST /categorie_comptables.json
  def create
    @categorie_comptable = CategorieComptable.new(params[:categorie_comptable])
    @categorie_comptable.niveau = @categorie_comptable.numero.to_s.length

    num = @categorie_comptable.numero.to_s

    case @categorie_comptable.niveau
      when 1
      when 2
        @categorie_comptable.categorie_comptable = CategorieComptable.find_by_numero(num[0].to_i)
      else
        @categorie_comptable.categorie_comptable = CategorieComptable.find_by_numero(num[0..1].to_i)
    end


    respond_to do |format|
      if @categorie_comptable.save
        format.html { redirect_to @categorie_comptable, notice: 'Categorie comptable was successfully created.' }
        format.json { render json: @categorie_comptable, status: :created, location: @categorie_comptable }
      else
        format.html { render action: "new" }
        format.json { render json: @categorie_comptable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categorie_comptables/1
  # PUT /categorie_comptables/1.json
  def update
    @categorie_comptable = CategorieComptable.find(params[:id])

    respond_to do |format|
      if @categorie_comptable.update_attributes(params[:categorie_comptable])
        format.html { redirect_to @categorie_comptable, notice: 'Categorie comptable was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @categorie_comptable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie_comptables/1
  # DELETE /categorie_comptables/1.json
  def destroy
    @categorie_comptable = CategorieComptable.find(params[:id])
    @categorie_comptable.destroy

    respond_to do |format|
      format.html { redirect_to categorie_comptables_url }
      format.json { head :ok }
    end
  end
end
