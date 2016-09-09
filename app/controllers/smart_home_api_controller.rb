class SmartHomeApiController < ApplicationController
  @@repository = RDF::Repository.new

  cattr_accessor :repository

  def index

  end

  def expand_graph
    temp = RDF::Graph.load(params[:uri])
    temp.each_statement do |statement|
      self.repository << statement
    end
    redirect_to action: :expose_graph
  end

  def expose_graph
    @response = RDF::Writer.for(:ntriples).buffer do |writer|
      self.repository.each_statement do |statement|
         writer << statement
      end
    end
    @repository = self.repository
    respond_to do |format|
      format.html
      format.all { render text: @response }
    end
  end
end
