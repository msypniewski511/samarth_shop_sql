class PagesController < StoreController
  helper 'spree/products'
  respond_to :html

  def home
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products
    @product = Spree::Product.last
  end
end
