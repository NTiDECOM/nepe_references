class SearchController < ApplicationController
  def search
    if params[:q].nil?
      @references = []
      @searched = false
    else
      @references = Reference.search(params[:q])
      @searched = true
    end
  end
end
