Spree::ShippingMethod.class_eval do
  has_many :shipping_method_zones, class_name: 'Spree::ShippingMethodsZone'
  has_many :zones, through: :shipping_method_zones, class_name: 'Spree::Zone'
end
