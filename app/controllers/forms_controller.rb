class FormsController < ApplicationController
  def index
  end

  def new
    @form = Form.new
  end

  def create
    Form.create(name: params[:form][:name], email: params[:form][:email], content: params[:form][:content])
    redirect_to new_form_path
  end
end
