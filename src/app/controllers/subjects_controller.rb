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
  # Instantiate a new object uesing form parameters
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
    # edit and show are relivately the same
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
  end

  def delete
  end

  def destroy
  end

  private

    def subject_params
      params.require(:subject).permit(:name, :visible, :position)
    end

end
