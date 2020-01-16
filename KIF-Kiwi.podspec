Pod::Spec.new do |s|
  s.name             = 'KIF-Kiwi'
  s.version          = '1.0'
  s.summary          = 'Enable Behaviour-Driven Integration Tests built on KIF using Kiwi syntax'
  s.description      = <<-DESC
                       Write Kiwi specs to drive KIF actor through user interface actions.

                       * capture screenshots for failing tests
                       * share common setup using spec context
                       DESC
  s.homepage         = 'https://github.com/paulz/KIF-Kiwi'
  s.license          = 'MIT'
  s.author           = { 'Paul Zabelin' => 'https://github.com/paulz' }
  s.source           = {
      :git => 'https://github.com/paulz/KIF-Kiwi.git',
      :tag => s.version.to_s
  }
  s.social_media_url = 'https://twitter.com/iospaulz'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.dependency 'Kiwi', '~> 3.0'
  s.dependency 'KIF', '~> 3.0'
  s.framework = 'XCTest'
end
