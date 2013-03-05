class EsculturasController < ApplicationController
  # GET /esculturas
  # GET /esculturas.json
  def index
    @esculturas = Escultura.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @esculturas }
    end
  end

  # GET /esculturas/1
  # GET /esculturas/1.json
  def show
    @escultura = Escultura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @escultura }
    end
  end

  # GET /esculturas/new
  # GET /esculturas/new.json
  def new
    @escultura = Escultura.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @escultura }
    end
  end

  # GET /esculturas/1/edit
  def edit
    @escultura = Escultura.find(params[:id])
  end

  # POST /esculturas
  # POST /esculturas.json
  def create
    @escultura = Escultura.new(params[:escultura])

    respond_to do |format|
      if @escultura.save
        format.html { redirect_to @escultura, notice: 'Escultura was successfully created.' }
        format.json { render json: @escultura, status: :created, location: @escultura }
      else
        format.html { render action: "new" }
        format.json { render json: @escultura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /esculturas/1
  # PUT /esculturas/1.json
  def update
    @escultura = Escultura.find(params[:id])

    respond_to do |format|
      if @escultura.update_attributes(params[:escultura])
        format.html { redirect_to @escultura, notice: 'Escultura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @escultura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esculturas/1
  # DELETE /esculturas/1.json
  def destroy
    @escultura = Escultura.find(params[:id])
    @escultura.destroy

    respond_to do |format|
      format.html { redirect_to esculturas_url }
      format.json { head :no_content }
    end
  end
end
