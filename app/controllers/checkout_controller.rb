class CheckoutController < ApplicationController
  def display_checkout
    @customer = Customer.find(session[:user_id])

       @gst = @customer.province.GST

       @pst = @customer.province.PST

       @hst = @customer.province.HST

       @tax_total = @gst + @pst + @hst

       puts @tax_total
       puts session[:cart_total].to_i
       #number_to_currency(session[:cart_total].to_f / 100)
       #@money_after_taxes = ((session[:cart_total].to_f / 100) * @tax_total) + session[:cart_total]
      @money_after_taxes = (session[:cart_total].to_i/100 * @tax_total) + session[:cart_total]/100
      puts @money_after_taxes
  end
end
