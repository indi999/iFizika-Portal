class RulesController < ApplicationController
  before_action :authenticate_user!
  def index
    @search = Rule.search do
      fulltext params[:search]
    end
    @rules = @search.results

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rules }
    end
  end
end
