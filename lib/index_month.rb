class IndexMonth
  include ActiveModel::Model
  attr_accessor :record_month, :income, :expens

  def initialize(record_month)
    @record_month = record_month
    @income = BigDecimal.new(0)
    @expens = BigDecimal.new(0)
  end
end
