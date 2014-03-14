platform :ios, 7.0

pod 'RKSupport', git: 'https://github.com/RestKit/RKSupport', branch: 'master'
pod 'CSURITemplate', :head
pod 'RestKit', git: 'https://github.com/RestKit/RestKit', branch: 'experimental/port-to-afnetworking-2.0'

# Include optional Testing and Search components
# pod 'RestKit/Testing', '~> 0.20.0rc'
# pod 'RestKit/Search', '~> 0.20.0rc'

# Import Expecta for Testing
target :test do
  link_with :RKGistTests
  pod 'Expecta', '0.2.1'
end
