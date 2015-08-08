Pod::Spec.new do |s|
  s.name     = 'BUYPaymentButton'
  s.version  = '1.0.2'
  s.platform = :ios, '8.0'
  s.license  = 'MIT'
  s.summary  = 'Vector-based Apple Pay UIButton that supports all iOS 8 versions'
  s.homepage = 'https://github.com/Shopify/buypaymentbutton'
  s.authors   = { 'Shopify' => 'rune.madsen@shopify.com' }
  s.source   = { :git => 'https://github.com/Shopify/buypaymentbutton.git', :tag => s.version.to_s }
  s.description = 'BUYPaymentButton is a vector-based Apple Pay button that provides a custom UIButton for Apple Pay that replicates Apple\'s PKPaymentButton available in iOS 8.3 and later.'
  s.source_files = 'BUYPaymentButton/*.{h,m}'
  s.framework    = 'PassKit'
  s.requires_arc = true
end
