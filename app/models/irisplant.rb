class Irisplant < ActiveRecord::Base
  belongs_to :hybridizer

  scope :sibtype, Irisplant.all.where(iristype: :SIB)
end
