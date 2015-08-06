Spree::Variant.class_eval do
  has_many :variant_images, -> { order(:position) }, class_name: '::Spree::VariantImage'
  has_many :images, -> { order(:position) }, through: :variant_images, source: :image # for @product.images.first to return correctly
end
