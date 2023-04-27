class Item < ApplicationRecord
    validates_presence_of :title, :description, :price, :size, :clothingType, :color

    def self.ransackable_attributes(auth_object = nil)
        ["clothingType", "color", "description", "size", "title"]
    end

    def self.ransackable_associations(auth_object = nil)
        []
      end
end
