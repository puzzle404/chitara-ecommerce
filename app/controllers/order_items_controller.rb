class OrderItemsController < ApplicationController

  def create
  # Find associated sandal and current cart
  chosen_sandal = Sandal.find(params[:sandal_id])
  current_cart = @current_cart

  # If cart already has this sandal then find the relevant order_item and iterate quantity otherwise create a new order_item for this sandal
  if current_cart.sandals.include?(chosen_sandal)
    # Find the order_item with the chosen_sandal
    @order_item = current_cart.order_items.find_by(:sandal_id => chosen_sandal)
    # Iterate the order_item's quantity by one
    @order_item.quantity += 1
  else
    @order_item = OrderItem.new

    @order_item.cart = current_cart
    @order_item.sandal = chosen_sandal
    @order_item.order_id = 1

  end
  puts "se agrego al carrito"
  # Save and redirect to cart show path
  @order_item.save

  redirect_to cart_path(current_cart)
end

def destroy
  @order_item = OrderItem.find(params[:id])
  @order_item.destroy
  redirect_to cart_path(@current_cart)
end
def add_quantity
  @order_item = OrderItem.find(params[:id])
  @order_item.quantity += 1
  @order_item.save
  redirect_to cart_path(@current_cart)
end

def reduce_quantity
  @order_item = OrderItem.find(params[:id])
  if @order_item.quantity > 1
    @order_item.quantity -= 1
  end
  @order_item.save
  redirect_to cart_path(@current_cart)
end

private
  def order_item_params
    params.require(:order_item).permit(:quantity,:sandal_id, :cart_id)
  end
end