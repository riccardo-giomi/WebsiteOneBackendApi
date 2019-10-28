class Project < ApplicationRecord
validates_presence_of :name, :description, :github_url,
                      :issue_tracker, :slack_channel_name, :status
end
