class Building < ActiveRecord::Base
  belongs_to :owner,
    inverse_of: :buildings

  validates_presence_of :street_address
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :postal_code

  validates_format_of :postal_code, with: /\A\d{5}-\d{4}|\A\d{5}\z/

end
