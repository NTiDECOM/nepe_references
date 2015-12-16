class SearchController < ApplicationController
  def search
    if params[:q].nil?
      @references = []
    else
      @references = Reference.search(params[:q])
    end
  end
end
