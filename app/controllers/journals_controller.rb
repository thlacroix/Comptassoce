class JournalsController < ApplicationController

before_filter :search_compte_bancaire
  # GET /journals
  # GET /journals.json
	
	def search_compte_bancaire
		@compte_bancaire = CompteBancaire.find(params[:compte_bancaire_id])
	end
	
  def index
    @journals = @compte_bancaire.journals
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @journals }
    end
  end

  # GET /journals/1
  # GET /journals/1.json
  def show
    @journal = Journal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @journal }
    end
  end

  # GET /journals/new
  # GET /journals/new.json
  def new
    @journal = Journal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @journal }
    end
  end

  # GET /journals/1/edit
  def edit
    @journal = @compte_bancaire.journals.find(params[:id])
  end

  # POST /journals
  # POST /journals.json
  def create
		case params[:journal][:type]
			when "HA"
				@journal = @compte_bancaire.journal_has.new(params[:journal])
				
			when "VENTE"
				@journal = @compte_bancaire.journal_ventes.new(params[:journal])
				
			when "BANQUE"
				@journal = @compte_bancaire.journal_banques.new(params[:journal])
				
			when "OD"
				@journal = @compte_bancaire.journal_ods.new(params[:journal])
				
			else
				@journal = @compte_bancaire.journals.new(params[:journal])

		end
		
    respond_to do |format|
      if @journal.save
        format.html { redirect_to compte_bancaire_journals_path(@compte_bancaire), notice: 'Journal was successfully created.' }
        format.json { render json: compte_bancaire_journals_path(@compte_bancaire), status: :created, location: @journal }
      else
        format.html { render action: "new" }
        format.json { render json: @journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /journals/1
  # PUT /journals/1.json
  def update
    @journal = @compte_bancaire.journals.find(params[:id])

    respond_to do |format|
      if @journal.update_attributes(params[:journal])
        format.html { redirect_to compte_bancaire_journals_path(@compte_bancaire), notice: 'Journal '+@journal.nom+'was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journals/1
  # DELETE /journals/1.json
  def destroy
		@compte_bancaire = CompteBancaire.find(params[:compte_bancaire_id])
    @journal = @compte_bancaire.journals.find(params[:id])
    @journal.destroy

    respond_to do |format|
      format.html { redirect_to compte_bancaire_journals_path(@compte_bancaire) }
      format.json { head :ok }
    end
  end
end
