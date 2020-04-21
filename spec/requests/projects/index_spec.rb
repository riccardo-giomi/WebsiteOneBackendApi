# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ProjectsController#index' do
  let(:path) { '/projects' }
  
  context "with 10 projects in the database" do
    before :all do
      create_list(:project, 10)
    end

    before :each do
      get(path)
    end

    it 'responds with status code 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'returns all projects' do
      expect(response.parsed_body.count).to eq(10)
    end
  end

  context '' do
  end
end
