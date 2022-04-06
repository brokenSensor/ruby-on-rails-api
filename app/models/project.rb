class Project < ApplicationRecord
    has_many :todos, -> { order(:id => :asc) }, dependent: :destroy
end
