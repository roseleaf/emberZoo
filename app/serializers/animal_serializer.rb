class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :classification, :temperament, :diet, :quantity_here
end
