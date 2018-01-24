class HomeController < ShopifyApp::AuthenticatedController
  def index
  
    @orders = ShopifyAPI::Order.find(:all, :params => {:limit => 250, :status => "any" })
    @openorders = ShopifyAPI::Order.find(:all, :params => {:limit => 250, :status => "open" })
    @unfulfilledorders = ShopifyAPI::Order.find(:all, :params => {:limit => 250, :status => "any", :fulfillment_status => "unshipped" })
    @unpaidorders = ShopifyAPI::Order.find(:all, :params => { :status => "any" , :financial_status => "unpaid", :financial_status => "pending"})
    @archivedorders = ShopifyAPI::Order.find(:all, :params => {:limit => 250, :status => "closed" })
    @unarchivedorders = ShopifyAPI::Order.find(:all, :params => {:limit => 250, :status => "open" })

        @order_count = ShopifyAPI::Order.count

  
    # @uri = URI.parse("https://#{@shop_session.url}/admin/orders.json")
  end

 


end
