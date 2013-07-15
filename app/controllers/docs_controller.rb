class DocsController < ApplicationController
  def index
    @docs = Doc.all
  end

  def load
    filename = Doc.find(params[:doc_id]).sample.path
    respond_to { |format| format.html { send_file filename } }
  end
end
