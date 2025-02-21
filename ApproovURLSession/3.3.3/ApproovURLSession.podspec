Pod::Spec.new do |s|
  s.name         = "ApproovURLSession"
  s.version      = "3.3.3"
  s.summary      = "Approov mobile attestation SDK"
  s.description  = <<-DESC
    Approov SDK integrates security attestation and secure string fetching for both iOS and watchOS apps.
  DESC
  s.homepage     = "https://approov.io"
  s.license      = { type: "Commercial", file: "LICENSE" }
  s.authors      = { "CriticalBlue, Ltd." => "support@approov.io" }
  s.source       = { git: "https://github.com/adamgic/approov-service-urlsession.git", tag: s.version }

  # Supported platforms
  s.ios.deployment_target = '12.0'
  s.watchos.deployment_target = '9.0'

  # Specify the source code paths for the combined target
  s.source_files = 'Sources/ApproovURLSession/**/*'

  s.dependency 'approov-ios-sdk', '3.3.3'
  s.frameworks = 'Approov'
  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 x86_64 arm64_32 x86_64'         # Valid architectures for iOS
  }
end
