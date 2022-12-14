class BooksController < ApplicationController
  before_action :set_store, only: %i[index search create show edit update destroy]
  before_action :set_book, only: %i[show edit update destroy]

  # GET /books or /books.json
  def index
    @books = @store.books.all
  end

  # GET /books/1 or /books/1.json
  def show
  end

  def search
    @books = @store.books.all
    searched_books = @books.search_by_term(params[:query])
    search_results = searched_books.map{|b| b.attributes.merge({store_name: b.store.name})}
    render json: search_results
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books or /books.json
  def create
    params.permit!
    @book = Book.new(book_params.merge({store_id: store_id}))

    respond_to do |format|
      if @book.save
        format.html { redirect_to store_book_url(@store, @book), notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    params.permit! if @book
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to store_book_url(@store, @book), notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy

    respond_to do |format|
      format.html { redirect_to store_path(id: @store.id), notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = @store.books.find(params[:id]) if params[:id]
    end

    def set_store
      @store = Store.find(store_id)
    end

    def store_id
      params[:store_id]
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.fetch(:book, {})
    end
end
