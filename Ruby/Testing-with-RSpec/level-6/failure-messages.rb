# Before

module ValidateNumericalityOf
  class Matcher
    def initialize(attribute)
      @attribute = attribute
    end

    def matches?(model)
      @model = model
      check_for_number
    end

    def failure_message
      "Not implemented"
    end

    def negative_failure_message
      "Not implemented"
    end

    def description
      "validate numericality of "
    end

    def check_for_number
      @model[@attribute] = "not a number"
      @model.valid?
      @model.errors[@attribute].include?("is not a number")
    end
  end

  def validate_numericality_of(attribute)
    Matcher.new(attribute)
  end
end

RSpec.configure do |config|
  config.include ValidateNumericalityOf, type: :model
end

# After

module ValidateNumericalityOf
  class Matcher
    def initialize(attribute)
      @attribute = attribute
    end

    def matches?(model)
      @model = model
      check_for_number
    end

    def failure_message
      "#{@model.class} failed to validate: #{@attribute} numericality"
    end

    def negative_failure_message
      "#{@model.class} unexpected validation: #{@attribute} numericality"
    end

    def description
      "validate numericality of "
    end

    def check_for_number
      @model[@attribute] = "not a number"
      @model.valid?
      @model.errors[@attribute].include?("is not a number")
    end
  end

  def validate_numericality_of(attribute)
    Matcher.new(attribute)
  end
end

RSpec.configure do |config|
  config.include ValidateNumericalityOf, type: :model
end
