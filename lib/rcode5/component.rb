module Rcode5
  class Component
    include ActiveModel::Model
    include ActiveModel::Conversion

    def to_partial_path
      "/" + self.class.name.underscore
    end
  end
end
