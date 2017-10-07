Pod::Spec.new do |s|
s.name = 'YYRegex'
s.version = '0.0.1'
s.license = 'MIT'
s.summary = 'Regex concentrate on iOS.'
s.homepage = 'https://github.com/hardtosaygoodbye/YYRegex'
s.authors = { '马万荣' => 'hardtosaygoodbye@sina.com' }
s.source = { :git => 'https://github.com/hardtosaygoodbye/YYRegex.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = 'YYRegex/*.{h,m}'
s.resources = ['YYRegex/*.xib', 'YYRegex/*.xcassets']
end
