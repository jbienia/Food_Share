class CheckoutController < ApplicationController
  @@value = 0

  def display_checkout
    @customer = Customer.find(session[:user_id])

       @gst = @customer.province.GST

       @pst = @customer.province.PST

       @hst = @customer.province.HST

       @tax_total = @gst + @pst + @hst

       @money_after_taxes = after_taxes(@tax_total)
      #@money_after_taxes = ((session[:cart_total].to_f/100) * @tax_total) + (session[:cart_total].to_f/100)

  end

  def place_order
    puts @money_after_taxes
    order = Order.create(customer_id: session[:user_id].to_i,meals: session[:shopping_cart].keys,total: @@value * 100)

    redirect_to root_url, :notice => "Thank you for your order"
  end

  def after_taxes(tax_total)
 @@value  =  (((session[:cart_total].to_f/100) * tax_total) + session[:cart_total].to_f/100)
 puts @@value
  end
end
