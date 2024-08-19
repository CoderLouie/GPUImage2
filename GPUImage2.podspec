Pod::Spec.new do |s|
s.name     = 'GPUImage2'
s.version  = '0.1.0'
s.license  = 'BSD'
s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
s.homepage = 'https://github.com/BradLarson/GPUImage2'
s.author   = { 'liyang' => '18616562401@163.com' }

# This commit on that fork of GPUImage should contain just upgrades needed for Swift 4 compatibility. See https://github.com/BradLarson/GPUImage2/pull/212
# Replace with https://github.com/BradLarson/GPUImage2.git when merged
# into BradLarson's repository.
s.source   = { :git => 'https://github.com/CoderLouie/GPUImage2.git', :tag => s.version.to_s }

s.source_files = 'framework/Source/**/*.{swift}'
s.resources = 'framework/Source/Operations/Shaders/*.{fsh}'
s.requires_arc = true
s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES', 'OTHER_SWIFT_FLAGS' => "$(inherited) -DGLES"}

s.ios.deployment_target = '11.0'
s.ios.exclude_files = 'framework/Source/Mac', 'framework/Source/Linux', 'framework/Source/Operations/Shaders/ConvertedShaders_GL.swift'
s.frameworks   = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation']

end
