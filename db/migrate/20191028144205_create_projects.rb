class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.boolean :status
      t.string :github_url
      t.string :issue_tracker
      t.string :slack_channel_name

      t.timestamps
    end
  end
end
