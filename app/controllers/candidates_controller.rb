class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(params[:candidate])
    if @candidate.save
      redirect_to @candidate, :notice => "Successfully created candidate."
    else
      render :action => 'new'
    end
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])
    if @candidate.update_attributes(params[:candidate])
      redirect_to @candidate, :notice  => "Successfully updated candidate."
    else
      render :action => 'edit'
    end
  end

  def show
    @candidate = Candidate.find(params[:id])
  end
end
