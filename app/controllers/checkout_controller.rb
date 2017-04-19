class CheckoutController < ApplicationController
  @value = 0

  def display_checkout
    @customer = Customer.find(session[:user_id])
    @gst = @customer.province.GST

    @pst = @customer.province.PST

    @hst = @customer.province.HST

    @tax_total = @gst + @pst + @hst

    after_taxes(@tax_total)

    @money_after_taxes = session[:final_total]
  end

  def place_order
    puts @money_after_taxes
    Order.create(customer_id: session[:user_id].to_i,
                 meals: session[:shopping_cart],
                 total: session[:final_total].to_f * 100)

    redirect_to root_url, notice: 'Thank you for your order'
  end

  def after_taxes(tax_total)
    session[:final_total] = ((((session[:cart_total].to_f / 100)) * tax_total).round(2) + session[:cart_total].to_f / 100)
  end
end
