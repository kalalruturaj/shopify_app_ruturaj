ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "141873b9ad4d349242c652f3557abf19"
  config.secret = "00653a682017a87ba36f156e4894ec74"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
