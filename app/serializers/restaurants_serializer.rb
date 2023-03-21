class RestaurantsSerializer < ActiveModel::Serializer
  attributes :id, :name, :address

  def include_pizza4s?
    @instance_options[:include_pizza4s]
  end

  has_many :pizza4s, if: :include_pizza4s?
end
