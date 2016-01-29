class VersesController < ApplicationController
  def search
    @query = params[:query]
    if @query
      @verse_versions = VerseVersion.where("content LIKE '%#{@query}%'").includes(:verse)
    else
      @verse_versions = []
    end
  end
end
