class FactureEmisesController < FacturesController

  def create    
    @facture = FactureEmise.new(params[:facture_emise])

    respond_to do |format|
      if @facture.save
        format.html { redirect_to @facture, notice: 'Facture was successfully created.' }
        format.json { render json: @facture, status: :created, location: @facture }
      else
        format.html { render action: "new" }
        format.json { render json: @facture.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @facture = FactureEmise.find(params[:id])

    respond_to do |format|
      if @facture.update_attributes(params[:facture_emise])
        format.html { redirect_to @facture, notice: 'Facture was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @facture.errors, status: :unprocessable_entity }
      end
    end
  end

end
