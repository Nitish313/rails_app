class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  
  def index
    @people = Person.search(params[:search])
  end

  def new
    @person = Person.new
  end

  def show
  end

  def edit
  end

  def create
    @person = Person.new(person_params)
    
    if @person.save
      redirect_to @person, notice: "Person is successfully created"
    else
      render 'new'
    end
  end

  def update
    if @person.update(person_params)
      redirect_to @person, notice: "Person is successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @person.destroy
    redirect_to(people_path, method: :delete, notice: "Person is successfully destroyed")
  end
  
  private
  
    def set_person
      @person = Person.find(params[:id])
    end
    
    def person_params
      params.require(:person).permit(:name, :email, :search)
    end
end
