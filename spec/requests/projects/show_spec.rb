# frozen_string_literal: true

require 'rails_helper'
RSpec.describe 'ProjectsController#show' do
  context 'with valid parameters' do
    let(:project) do
      create(:project, title: 'Amazing project',
                       status: 'Active',
                       description: 'Amazing project description')
    end

    let(:path) { project_path(project) }

    it 'responds with status code 200' do
      get(path)
      expect(response.status).to eq 200
    end

    it 'returns the correct result' do
    end
  end
end
