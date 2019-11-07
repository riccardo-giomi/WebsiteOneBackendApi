require 'rails_helper'

RSpec.describe Project, type: :model do

  describe 'attributes' do
    it { should have_attribute :name }
    it { should have_attribute :image_url}
    it { should have_attribute :description }
    it { should have_attribute :github_url }
    it { should have_attribute :issue_tracker }
    it { should have_attribute :slack_channel_name }
    it { should have_attribute :status }
  end

  describe 'validations' do
    it { should validate_presence_of :name  }
    it { should validate_presence_of :description }
    it { should validate_presence_of :github_url  }
    it { should validate_presence_of :issue_tracker  }
    it { should validate_presence_of :status  }
    it { should validate_presence_of :slack_channel_name }
  end
end
