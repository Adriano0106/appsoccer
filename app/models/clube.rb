class Clube < ApplicationRecord
    belongs_to :campeonato
    has_many :players
end
