Spree::Variant.class_eval do
  has_many :option_value_variants, class_name: 'Spree::OptionValuesVariant'
  has_many :option_values,
           through: :option_value_variants,
           class_name: 'Spree::OptionValue'
end
