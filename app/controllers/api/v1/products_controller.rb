class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products, status: 200 
  end

  def create 
    product = Product.create(
      name: params[:name],
      brand: params[:brand],
      description: params[:description],
      price: params[:price],
    )
    render json: product, status: 201
  end
  
  def update
    product = Product.find(params[:id])
    product.update(
      name: params[:name],
      brand: params[:brand],
      description: params[:description],
      price: params[:price],
    )
    render json: product, status: 200
  end

  def show
    product = Product.find_by(id: params[:id])
    if product 
      render json: product, status: 200 
    else
      render json: {error: "Product not found"}, status: 404
    end   
  end
end
