# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ProjectsController#index' do
  let(:path) { '/projects' }

  before :example do
    create_list(:project, 10)
    get(path)
  end

  
end