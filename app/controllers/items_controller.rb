class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item, only: [:show,:update,:edit,:destroy]

  def index
    render component: "Items", props:{department: @department, items: @department.items}
  end

  def show
    # @department.items.find(params[:id])
    render component: "Item", props:{department:@department, items: @department.items}
  end

  def new
    render component: "NewItem", props:{department:@department}
  end

  def create
    @item = @department.items.new(department_items_params)
    if (@item.save)
      redirect_to department_items_path
    else
    end
  end

  def edit
    render component: "EditItem"
  end

  def update
    if @department.items.update(department_items_params)
      redirect_to department_items_path
    else
    end
  end

  def destroy
    @item.destroy
    redirect_to department_items_path
  end


  private

  def department_items_params
    params.require(:item).permit(:name)
  end

  def set_department
    @department = Department.find(params[:department_id])
  end

  def set_item
    @item = @department.items.find(params[:id])
  end

end
