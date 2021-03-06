require 'spec_helper'

describe 'gcc' do
  let(:facts) { default_test_facts.merge(:macosx_productversion_major => 10.9) }

  it do
    should contain_package('boxen/brews/gcc5').with({
      :ensure => '5.4.0',
    })

    should contain_package('boxen/brews/apple-gcc42').with({
      :ensure => 'absent'
    })

    should contain_package('boxen/brews/gcc48').with({
      :ensure => 'absent'
    })
  end
end
