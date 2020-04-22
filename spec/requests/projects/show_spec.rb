# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ProjectsController#show' do
  context 'with valid parameters' do
    let(:project_attributes) do
      {
        title: 'Amazing project',
        status: 'Active',
        description: 'Amazing project description'
      }
    end
    let(:project) { create(:project, project_attributes) }
    let(:path) { project_path(project) }
    before(:example) { get(path) }

    it 'responds with status code 200' do
      expect(response.status).to eq 200
    end

    it 'returns the correct result' do
      expect(response.parsed_body.deep_symbolize_keys!).to include(project_attributes)
    end
  end
end
