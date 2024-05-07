require "erb"
require_relative "ruby"

requested_version = ARGV[0]

if !Ruby::SUPPORTED_VERSIONS.include?(requested_version)
  puts <<~EOS
    #{requested_version} is not a supported ruby. Supported rubies are:
    #{ Ruby::SUPPORTED_VERSION.map { |version| '  - ' + version }.join("\n") }

    If you're trying to build a newer ruby, edit SUPPORTED_VERSIONS in lib/ruby.rb

  EOS
  exit
end

template = ERB.new(IO.read("Dockerfile.erb"))
puts template.result(binding)
