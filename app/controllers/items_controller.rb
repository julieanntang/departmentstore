class ItemsController < ApplicationController
  before_action :set_department

  def index
    render component: "Items", props:{department: @department, items: @department.items}
  end

  private

  def set_department
    @department = Department.find(params[:department_id])
  end

end
