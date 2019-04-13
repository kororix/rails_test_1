class FormsController < ApplicationController
  def index
  end

  def new
    @form = Form.new
  end

  def create
    Form.create(form_params)
    redirect_to new_form_path
  end

  private

  def form_params
    params.require(:form).permit(:name, :email, :content)
  end
end
