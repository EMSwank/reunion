class Activity

  attr_reader :type, :participant, :amount

  def initialize(type, participant, amount)
    @type = type
    @participant = participant
    @amount = amount
  end

  def activity_type
    type
  end

  def person_paid
    {@participant => @amount}
  end

  def total_cost
    total = {amounts: @amount}
    # total.values.inject(:+)
  end
end
