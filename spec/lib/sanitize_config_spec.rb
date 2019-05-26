# frozen_string_literal: true

require 'rails_helper'
require Rails.root.join('app', 'lib', 'sanitize_config.rb')

describe Sanitize::Config do
  describe '::MASTODON_STRICT' do
    subject { Sanitize::Config::MASTODON_STRICT }

    it 'converts h1 to p' do
      expect(Sanitize.fragment('<h1>Foo</h1>', subject)).to eq '<p>Foo</p>'
    end

    it 'converts li to p' do
      expect(Sanitize.fragment('<p>Check out:</p><ul><li>Foo</li><li>Bar</li></ul>', subject)).to eq '<p>Check out:</p> <p>Foo</p><p>Bar</p> '
    end
  end
end
