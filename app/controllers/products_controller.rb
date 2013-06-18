class ProductsController < ApplicationController
  def edit
    current_user = User.first
    @product = Product.find_by_id(params[:id]) || current_user.products_owned.new
  end

  def visions
    @visions = Vision.where(:product_id => params[:product_id]).includes(:comments)
  end

  def update
    product = Product.find(params[:id])
    product.update_attributes! params['attr'] => params['val']

    respond_to do |format|
      format.html
      format.json do
        render :json => {:product_id => product.id}.merge(params.slice(:attr, :val))
      end
    end
  end
end
