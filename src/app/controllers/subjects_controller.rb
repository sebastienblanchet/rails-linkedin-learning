class SubjectsController < ApplicationController

  def index
    @subjects = Subject.order('position ASC')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    # Instantiate a new object using form parameters
    # mass assignement i.e all at the same time name visible position
    @subject = Subject.new(subject_params)
    # Save the object
    if @subject.save
      # If save succeeds, redirect to the index action
      redirect_to(subjects_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private
    # STRONG parameters
    # only all them what is okay to use
    # makes sire that we can send
    def subject_params
      params.require(:subject).permit(:name, :visible, :position)
    end

end
