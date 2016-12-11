module Descriptive
  class Description < ApplicationRecord
    belongs_to :describable, polymorphic: true
    belongs_to :language, class_name: 'Multilingual::Language'

    validates :definition, presence: true,
                           length: { is: 80 }
    validates :full, presence: true,
                     length: { is: 1000 }
    validates :language, presence: true
    validates :describable, presence: true
  end
end
