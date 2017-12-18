Spree::OptionValue.class_eval do
  has_many :option_value_variants, class_name: 'Spree::OptionValuesVariant'
  has_many :variants,
           through: :option_value_variants,
           class_name: 'Spree::Variant'
end
