module Ruby
  # See https://www.ruby-lang.org/en/downloads/ for currently-supported versions
  SUPPORTED_VERSIONS = ["3.1", "3.2", "3.3"]

  def self.versions
    SUPPORTED_VERSIONS.each do |version|
      puts version
    end
  end
end
