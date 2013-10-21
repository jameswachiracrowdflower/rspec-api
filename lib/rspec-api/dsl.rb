require 'rspec-api/dsl/resource'
require 'rspec-api/dsl/route'
require 'rspec-api/dsl/request'

module DSL
end

def resource(name, args = {}, &block)
  args.merge! rspec_api_dsl: :resource, rspec_api: {resource_name: name}
  describe name, args, &block
end

RSpec.configuration.include DSL::Resource, rspec_api_dsl: :resource
RSpec.configuration.include DSL::Route, rspec_api_dsl: :route
RSpec.configuration.include DSL::Request, rspec_api_dsl: :request

if RSpec::Core::Version::STRING >= '2.14'
  RSpec.configuration.backtrace_exclusion_patterns << %r{lib/rspec-api/dsl\.rb}
end