Pod::Spec.new do |s|
    s.name          = 'WTBinaryFloatingPointExtensions'
    s.version       = '1.0.2'
    s.summary       = 'WTBinaryFloatingPointExtensions adds a number of useful extensions to all floating types.'
    s.description   = <<-DESC
            WTBinaryFloatingPointExtensions adds a number of useful extensions to all floating types,
            such as conversions between degrees and radians and uniform pseudo-random distributions.
                       DESC
    s.homepage      = 'https://github.com/wltrup/Swift-WTBinaryFloatingPointExtensions'
    s.license       = { :type => 'MIT', :file => 'LICENSE' }
    s.author        = { 'Wagner Truppel' => 'trupwl@gmail.com' }
    s.source        = { :git => 'https://github.com/wltrup/Swift-WTBinaryFloatingPointExtensions.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.source_files = 'WTBinaryFloatingPointExtensions/Classes/**/*'
end
