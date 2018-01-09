Spree::Prototype.class_eval do
  has_many :option_type_prototypes
  has_many :option_types,
           through: :option_type_prototypes,
           class_name: 'Spree::OptionType'
end
