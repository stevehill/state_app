class StatesController < ApplicationController

  def index
    list
    render('list')    
  end

  def list
    #State.all
    @states = State.order("states.name ASC")
  end

  def show
    @state = State.find(params[:id])
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(params[:state])   
    if @state.save
      redirect_to(:action => 'list')
    else  
      render('new')     
    end  
  end

  def edit
    @state = State.find(params[:id])
  end

  def update
    @state = State.find(params[:id])
    if @state.update_attributes(params[:state])
#     redirect_to(:action => 'list')
      redirect_to(:action => 'show', :id => @state.id)
    else  
      render('edit')     
    end  
  end

  def delete
    @state = State.find(params[:id])
  end

  def destroy
#   @state = State.find(params[:id])
#   @state.destroy   
    State.find(params[:id]).destroy
    redirect_to(:action => 'list')
  end
  
end
