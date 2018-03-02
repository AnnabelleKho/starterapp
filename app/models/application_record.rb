class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.reverse_chron_order
    order(created_at: :desc)
  end

  def self.chron_order_sort(sort_method)
    order(created_at: sort_method.to_sym)
  end
end
