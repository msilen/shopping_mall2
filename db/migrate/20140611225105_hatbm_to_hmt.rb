class HatbmToHmt < ActiveRecord::Migration
  def change
    tables_to_mutate.each { |tbl| add_column tbl, :id, :primary_key }
  end

  def tables_to_mutate
    [
      :spree_option_type_prototypes,
      :spree_option_value_variants,
      :spree_order_promotions,
      :spree_product_promotion_rules,
      :spree_property_prototypes,
      :spree_role_users,
      :spree_shipping_method_zones
    ]
  end
end
