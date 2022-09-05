class StoresController < ApplicationController
  before_action :set_store, only: %i[ show edit update destroy ]

  # GET /stores or /stores.json
  def index
    @stores = current_user.stores.all
  end

  # GET /stores/1 or /stores/1.json
  def show
    @query = Book.ransack(params[:q])
  end

  # GET /stores/new
  def new
    @store = Store.new
  end

  def search_bar
    @store = Store.find(params[:store_id])
    @query = @store.books.ransack(params[:q])
    @search_results = @query.result(distint: true)
  end

  # GET /stores/1/edit
  def edit
  end

  # POST /stores or /stores.json
  def create
    params.permit!
    @store = Store.new(store_params.merge({user_id: current_user.id}))

    respond_to do |format|
      if @store.save
        format.html { redirect_to store_url(@store), notice: "Store was successfully created." }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stores/1 or /stores/1.json
  def update
    params.permit! if @store
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to store_url(@store), notice: "Store was successfully updated." }
        format.json { render :show, status: :ok, location: @store }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/1 or /stores/1.json
  def destroy
    @store.destroy

    respond_to do |format|
      format.html { redirect_to stores_url, notice: "Store was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_params
      params.fetch(:store, {})
    end
end
