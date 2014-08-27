# Before

module ValidateNumericalityOf
  class Matcher
    def initialize(attribute)
      @attribute = attribute
      @options = {}
      @errors = []
    end

    def matches?(model)
      @model = model
      @model[@attribute] = "not a number"
      @model.valid?

      if !@model.errors[@attribute].include?("is not a number")
        @errors << "numericality"
      end

      if @options[:only_integers]
        @model[@attribute] = 1.5
        @model.valid?
        if !@model.errors[@attribute].include?("must be an integer")
          @errors << "as an integer"
        end
      end

      pending
    end

    def failure_message
      "#{@model.class} failed to validate: #{@attribute} #{@errors.join(', ')}"
    end

    def negative_failure_message
      "#{@model.class} unexpected validation: #{@attribute} #{@errors.join(', ')}"
    end

    def description
      "validate numericality of #{@attribute}"
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
      @options = {}
      @errors = []
    end

    def matches?(model)
      @model = model
      @model[@attribute] = "not a number"
      @model.valid?

      if !@model.errors[@attribute].include?("is not a number")
        @errors << "numericality"
      end

      if @options[:only_integers]
        @model[@attribute] = 1.5
        @model.valid?
        if !@model.errors[@attribute].include?("must be an integer")
          @errors << "as an integer"
        end
      end

      @errors.empty? ? true : false
    end


    def only_integers
      @options[:only_integers] = true
      self
    end
    
    def failure_message
      "#{@model.class} failed to validate: #{@attribute} #{@errors.join(', ')}"
    end

    def negative_failure_message
      "#{@model.class} unexpected validation: #{@attribute} #{@errors.join(', ')}"
    end

    def description
      "validate numericality of #{@attribute}"
    end
  end

  def validate_numericality_of(attribute)
    Matcher.new(attribute)
  end
end

RSpec.configure do |config|
  config.include ValidateNumericalityOf, type: :model
end
