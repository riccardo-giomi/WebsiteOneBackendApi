# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProjectsController do
  let(:path) { '/projects' }
  let(:params) { { } }
  let(:headers) { { } }

  before :example do
    post(path, params: params, headers: headers)
  end

  context 'with invalid credentials' do

  end

  context 'with valid credentials' do

    context 'with invalid params' do
      it 'responds with a status of Unprocessable Entity' do
        expect(response.status).to eq(400)
      end
    end

  end

end
