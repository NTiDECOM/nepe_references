class BibleBooksController < ApplicationController

  def index
    @bible_books = BibleBook.all
  end

  def new
    @bible_book = BibleBook.new
  end

  def edit
    @bible_book = BibleBook.find(params[:id])
  end

  def create
    @bible_book = BibleBook.new(evangelist_params)
    if @bible_book.save
      redirect_to bible_books_path, notice: "Livro bíblico cadastrado com sucesso!"
    else
      render action: :new
    end
  end

  def update
    @bible_book = BibleBook.find(params[:id])
    if @bible_book.update(evangelist_params)
      redirect_to bible_books_path, notice: "Livro bíblico atualizado com sucesso!"
    else
      render action: :edit
    end
  end

  def destroy
    @bible_book = BibleBook.find(params[:id])
    if @bible_book.delete
      redirect_to bible_books_path, notice: "Livro bíblico removido com sucesso!"
    else
      redirect_to bible_books_path, alert: "Erro ao remover o Livro bíblico!"
    end
  end

  private
  def evangelist_params
    params.require(:bible_book).permit(:name)
  end

end
