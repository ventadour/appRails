# encoding: UTF-8
class DocumentsController < ApplicationController
  # GET /documents
  # GET /documents.json

  before_filter :authenticate
  def index
    @titre = "Document"
    @documents = (current_user.document).paginate(:page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documents }
    end
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    @titre = "Document"
    @document = Document.find(params[:id])

    @info = %x(ruby occurence.rb "#{@document.content}")
    @infoJava = %x(java -jar occ.jar "#{@document.content}")

    @info = ActiveSupport::JSON.decode(@info)
    @infoJava = ActiveSupport::JSON.decode(@infoJava)
    
    respond_to do |format|
      format.html #show.html.erb
      format.json { render json: @document }
    end
  end

  # GET /documents/new
  # GET /documents/new.json
  def new
    @titre = "Document"
    @document = Document.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document }
    end
  end

  # GET /documents/1/edit
  def edit
    @titre = "Document"
    @document = Document.find(params[:id])
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = current_user.document.build(params[:document])
     
    respond_to do |format|
      if @document.save
        flash[:success] = "Document créé avec succés!"
        format.html { redirect_to @document }
        format.json { render json: @document, status: :created, location: @document }
      else
        @titre = "Nouveau document"
        format.html { render action: "new" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /documents/1
  # PUT /documents/1.json
  def update
    @document = Document.find(params[:id])

    respond_to do |format|
      if @document.update_attributes(params[:document])
        flash[:success] = "Document mis à jour avec succés!"
        format.html { redirect_to @document }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    flash[:success] = "Document supprimer."

    respond_to do |format|
      format.html { redirect_to documents_url }
      format.json { head :no_content }
    end
  end
end
