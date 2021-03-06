class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to new_form_path, notice: 'お問い合わせを送信しました！'
    else
      render 'new'
    end
  end

  private

  def form_params
    params.require(:form).permit(:name, :email, :content)
  end
end
