class TagsController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_filter :authenticate_user!

  # GET /factoids
  # GET /factoids.json
  def index

    # TODO: Refactor this!!!
    sort_function = (params[:sort] == 'name' ?  :name : :count)

    @tags = Factoid.tag_counts.sort_by {|tag| tag.send(sort_function)}.reverse

    if params[:direction] == 'desc'
      @tags.reverse!
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tags }
    end
  end

  private
  def sort_column
    params[:sort] || "created_at"
  end

  def sort_direction
    params[:direction] || "desc"
  end

end
