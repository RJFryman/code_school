# Before

class ApiVersion

  def initialize(version, default_version) # Task 1
    @version, @default_version = version, default_version
  end

  def matches?(request)
    @default_version || check_headers(request.headers)
  end

  private
    def check_headers(headers)
      # Task 2
    end
end

# After

class ApiVersion

  def initialize(version, default_version=false)
    @version, @default_version = version, default_version
  end

  def matches?(request)
    @default_version || check_headers(request.headers)
  end

  private
    def check_headers(headers)
      accept = headers['Accept']
      accept && accept.include?("application/vnd.apocalypse.#{@version}+json")
    end
end
