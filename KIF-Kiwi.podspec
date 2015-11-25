Pod::Spec.new do |s|
  s.name             = 'KIF-Kiwi'
  s.version          = '0.2.5'
  s.summary          = 'Enable Behaviour-Driven Integration Tests built on KIF using Kiwi syntax, supports Xcode 6.0'
  s.description      = <<-DESC
                       Write Kiwi specs to drive KIF actor through user interface actions.

                       * capture screenshots for failing tests
                       * share common setup using spec context
                       DESC
  s.homepage         = 'https://github.com/IndieGoGo/KIF-Kiwi'
  s.license          = 'MIT'
  s.authors           = {
      'Indiegogo' => 'tech+gogopair@indiegogo.com',
      'Paul Zabelin' => 'paul@indiegogo.com',
      'Irvin Zhan' => 'irvintzhan@gmail.com'
  }
  s.source           = {
      :git => 'https://github.com/IndieGoGo/KIF-Kiwi.git',
      :tag => s.version.to_s
  }
  s.social_media_url = 'https://twitter.com/IndieGoGo'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.dependency 'Kiwi', '~> 2.0'
  s.dependency 'KIF', '~> 3.0'
  s.framework = 'XCTest'
end
