class Book < ApplicationRecord
    validates :title, :author, :description, presence: true, length: {minimum: 3}
    belongs_to :user

    has_rich_text :description
    has_one :content, class_name: 'ActionText::RichText', as: :record, dependent: :destroy

end
