class Cheese < ApplicationRecord
  
  def summary
    "#{name}: $#{price}"
  end

  def show
    cheese = Cheese.find_by(id: params[:id])
    render json: {
      id: cheese.id,
      name: cheese.name,
      price: cheese.price,
      is_best_seller: cheese.is_best_seller
    }
  end
  def index
    cheeses = Cheese.all
    render json: cheeses, except: [:created_at, :updated_at]
  end

  

end
