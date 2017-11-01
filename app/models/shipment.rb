class Shipment < ApplicationRecord
  belongs_to :client
  belongs_to :container

end
