Spree::Promotion.class_eval do
  has_many :order_promotions, class_name: 'Spree::OrdersPromotion'
  has_many :orders, through: :order_promotions, class_name: 'Spree::Order'
end
