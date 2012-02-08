class EntreeJournalsController < ApplicationController
  # GET /entree_journals
  # GET /entree_journals.json
  def index
    @entree_journals = EntreeJournal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entree_journals }
    end
  end

  # GET /entree_journals/1
  # GET /entree_journals/1.json
  def show
    @entree_journal = EntreeJournal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entree_journal }
    end
  end

  # GET /entree_journals/new
  # GET /entree_journals/new.json
  def new
    @entree_journal = EntreeJournal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entree_journal }
    end
  end

  # GET /entree_journals/1/edit
  def edit
    @entree_journal = EntreeJournal.find(params[:id])
  end

  # POST /entree_journals
  # POST /entree_journals.json
  def create
    @entree_journal = EntreeJournal.new(params[:entree_journal])

    respond_to do |format|
      if @entree_journal.save
        format.html { redirect_to @entree_journal, notice: 'Entree journal was successfully created.' }
        format.json { render json: @entree_journal, status: :created, location: @entree_journal }
      else
        format.html { render action: "new" }
        format.json { render json: @entree_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entree_journals/1
  # PUT /entree_journals/1.json
  def update
    @entree_journal = EntreeJournal.find(params[:id])

    respond_to do |format|
      if @entree_journal.update_attributes(params[:entree_journal])
        format.html { redirect_to @entree_journal, notice: 'Entree journal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @entree_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entree_journals/1
  # DELETE /entree_journals/1.json
  def destroy
    @entree_journal = EntreeJournal.find(params[:id])
    @entree_journal.destroy

    respond_to do |format|
      format.html { redirect_to entree_journals_url }
      format.json { head :ok }
    end
  end
end
