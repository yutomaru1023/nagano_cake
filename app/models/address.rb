class Address < ApplicationRecord
  def address_display
  '〒' + ship_postal_code + ' ' + ship_to_address + ' ' + ship_name
  end
end
