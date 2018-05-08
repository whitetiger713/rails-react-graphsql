class Directory < ApplicationRecord
  self.table_name = 'directory'

  def full_name
    "#{title} #{first_name} #{last_name}"
  end

  def full_address
    [
      street_line_1, street_line_2,
      sublocality, locality,
      postal_code, country_code
    ].compact.join(', ')
  end
end
