class DocDataController < ApplicationController
  before_action :set_doc_datum, only: [:show, :edit, :update, :destroy]

  # GET /doc_data
  # GET /doc_data.json
  def index
    @doc_data = DocDatum.all
  end

  # GET /doc_data/1
  # GET /doc_data/1.json
  def show
  end

  # GET /doc_data/new
  def new
    @doc_datum = DocDatum.new
  end

  # GET /doc_data/1/edit
  def edit
  end

  # POST /doc_data
  # POST /doc_data.json
  def create
    @doc_datum = DocDatum.new(doc_datum_params)

    respond_to do |format|
      if @doc_datum.save
        format.html { redirect_to @doc_datum, notice: 'Doc datum was successfully created.' }
        format.json { render :show, status: :created, location: @doc_datum }
      else
        format.html { render :new }
        format.json { render json: @doc_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doc_data/1
  # PATCH/PUT /doc_data/1.json
  def update
    respond_to do |format|
      if @doc_datum.update(doc_datum_params)
        format.html { redirect_to @doc_datum, notice: 'Doc datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @doc_datum }
      else
        format.html { render :edit }
        format.json { render json: @doc_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_data/1
  # DELETE /doc_data/1.json
  def destroy
    @doc_datum.destroy
    respond_to do |format|
      format.html { redirect_to doc_data_url, notice: 'Doc datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_datum
      @doc_datum = DocDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doc_datum_params
      params.require(:doc_datum).permit(:tag_id, :document_id)
    end
end
