# frozen_string_literal: true

RSpec.shared_examples 'does not check authenticity token' do
  context 'with forgery protection enabled' do
    before do
      ActionController::Base.allow_forgery_protection = true
    end

    after do
      ActionController::Base.allow_forgery_protection = false
    end

    it 'does not raise an error' do
      expect { subject }.not_to raise_error
    end
  end
end
