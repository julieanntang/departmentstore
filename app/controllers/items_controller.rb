class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item, only: [:show,:update,:edit,:destroy]

  def index
    render component: "Items", props:{department: @department, items: @department.items}
  end

  def show
    # @department.items.find(params[:id])
    render json: @item
  end

  def new
    render component: "NewItem"
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def set_department
    @department = Department.find(params[:department_id])
  end

  def set_item
    @item = @department.items.find(params[:id])
  end

end
