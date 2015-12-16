class ReferencesController < ApplicationController

  before_action :authenticate_user!

  def index
    @references = Reference.all
  end

  def new
    @bible_books = BibleBook.all.map { |bible_book| [bible_book.name, bible_book.id] }
    @reference = Reference.new
  end

  def edit
    @bible_books = BibleBook.all.map { |bible_book| [bible_book.name, bible_book.id] }
    @reference = Reference.find(params[:id])
  end

  def create
    @reference = Reference.new(reference_params)
    if @reference.save
      redirect_to references_path, notice: t('flash.reference.create_success')
    else
      render action: :new
    end
  end

  def update
    @reference = Reference.find(params[:id])
    if @reference.update(reference_params)
      redirect_to references_path, notice: t('flash.reference.update_success')
    else
      render action: :edit
    end
  end

  def destroy
    @reference = Reference.find(params[:id])
    if @reference.delete
      redirect_to references_path, notice: t('flash.reference.delete_success')
    else
      redirect_to references_path, alert: t('flash.reference.delete_error')
    end
  end

  private
  def reference_params
    params.require(:reference).permit(:chapter, :versicle, :keyword, :query_reference, :bible_book_id)
  end

end
