
#
# Be sure to run `pod lib lint webrtcLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'WebRTC'
  s.version          = '1.0.4'
  s.summary          = 'webrtc lib'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
webrtc(google opensource) is p2p video chat framework
                       DESC

  s.homepage         = 'https://github.com/huibin1984/libWebRTC'
  s.license          = 'MIT'
  s.author           = { 'huibin' => 'huibin1984@gmail.com' }
  s.source           = { :git => 'https://github.com/huibin1984/libWebRTC.git' }
  s.social_media_url = 'http://weibo.com/huibin1984'
  s.platform     = :ios, "8.0"

  s.xcconfig = { 
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Pod/**"', 
    'GCC_PREPROCESSOR_DEFINITIONS' => "WEBRTC_POSIX LOGGING=1 FEATURE_ENABLE_SSL SYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE IOS WEBRTC_IOS CARBON_DEPRECATED=YES USE_OPENSSL=1 NDEBUG NVALGRIND",
    'OTHER_LDFLAGS' => '-ObjC'
  }
  s.source_files = [
    "Pod/Headers/*.h", 
    "Pod/webrtc/video_frame.h", 
    "Pod/webrtc/typedefs.h",
    "Pod/webrtc/common_types.h",
    "Pod/webrtc/base/*.h", 
    "Pod/webrtc/media/base/*.h",
    "Pod/webrtc/media/engine/*.h",
    "Pod/webrtc/common_video/include/*.h",
    "Pod/webrtc/common_video/*.h",
    "Pod/webrtc/system_wrappers/include/*.h",
    ]
  s.vendored_libraries = "Pod/lib/*.a"
  s.public_header_files = 'Pod/Headers/*.h',
  s.library = 'icucore','c++','stdc++.6','sqlite3'
  s.frameworks = 'UIKit','Security','CFNetwork','GLKit','AudioToolbox','AVFoundation','CoreAudio','CoreMedia','CoreVideo','CoreGraphics','OpenGLES','QuartzCore'
  s.module_name = 'WebRTC'

  s.requires_arc     = true
end
