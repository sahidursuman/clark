class DocTypesController < ApplicationController
  before_action :set_doc_type, only: [:show, :edit, :update, :destroy]

  # GET /doc_types
  # GET /doc_types.json
  def index
    @doc_types = DocType.all
  end

  # GET /doc_types/1
  # GET /doc_types/1.json
  def show
  end

  # GET /doc_types/new
  def new
    @doc_type = DocType.new
	@temps = Template.all
  end

  # GET /doc_types/1/edit
  def edit
	@temps = Template.all
	@formtag = Tag.new
  end

  # POST /doc_types
  # POST /doc_types.json
  def create
    @doc_type = DocType.new(doc_type_params)
    @temps = Template.all

    respond_to do |format|
      if @doc_type.save
        format.html { redirect_to @doc_type, notice: 'Doc type was successfully created.' }
        format.json { render :show, status: :created, location: @doc_type }
      else
        format.html { render :new }
        format.json { render json: @doc_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doc_types/1
  # PATCH/PUT /doc_types/1.json
  def update
    respond_to do |format|
      if @doc_type.update(doc_type_params)
        format.html { redirect_to @doc_type, notice: 'Doc type was successfully updated.' }
        format.json { render :show, status: :ok, location: @doc_type }
      else
        format.html { render :edit }
        format.json { render json: @doc_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_types/1
  # DELETE /doc_types/1.json
  def destroy
    @doc_type.destroy
    respond_to do |format|
      format.html { redirect_to doc_types_url, notice: 'Doc type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_type
      @doc_type = DocType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doc_type_params
      params.require(:doc_type).permit(:title, :shortname, :template_id)
    end
end
