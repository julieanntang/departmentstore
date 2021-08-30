class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item, only: [:show]

  def index
    render component: "Items", props:{department: @department, items: @department.items}
  end

  def show
    # @department.items.find(params[:id])
    render json: @item
  end

  private

  def set_department
    @department = Department.find(params[:department_id])
  end

  def set_item
    @item = @department.items.find(params[:id])
  end

end
