class Hour < ApplicationRecord
  attribute :start, :time_only
  attribute :end,   :time_only
end
