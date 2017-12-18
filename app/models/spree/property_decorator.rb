Spree::Property.class_eval do
  has_many :property_prototypes, class_name: 'Spree::PropertiesPrototype'
  has_many :prototypes,
           through: :property_prototypes,
           class_name: 'Spree::Prototype'
end
