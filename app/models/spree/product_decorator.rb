Spree::Product.class_eval do
  has_many :promotion_rules,
           through: :product_promotion_rules,
           class_name: 'Spree::PromotionRule'
  has_many :product_promotion_rules, class_name: 'Spree::ProductPromotionRule'
end
