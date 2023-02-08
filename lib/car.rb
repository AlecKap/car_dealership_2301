class Car
attr_reader :monthly_payment, :loan_length, :color
  def initialize(make_and_model, monthly_payment, loan_length)
    @make_and_model = make_and_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def make
    @make_and_model.split[0]
  end

  def model
    @make_and_model.split[1]
  end

  def total_cost
    (@loan_length * @monthly_payment)
  end

  def paint!(new_color)
    @color = new_color
  end
end