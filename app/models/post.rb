class Post < ApplicationRecord
    validates :title, presence: true
    validate :fiction_or_non_fiction
    validates :content, length: {minimum:100}

    def fiction_or_non_fiction
        unless ["Non-Fiction", "Fiction"].include?(self.category)
            errors.add :category, "is not included in the list"
        end
    end
end