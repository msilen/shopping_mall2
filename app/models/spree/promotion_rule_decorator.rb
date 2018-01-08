Spree::PromotionRule.class_eval do
  has_many :product_promotion_rules
  has_many :promotion_rules,
           through: :product_promotion_rules,
           class_name: 'Spree::ProductPromotionRules'
end
