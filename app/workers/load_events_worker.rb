#
class LoadEventsWorker
  include Sidekiq::Worker

  def perform(project_id)
    project = Project.find(project_id)
    events = Octokit.repository_events(project.link)
    events.each do |event|
      event_hash = event.to_hash
      # binding.pry
      Event.create!(data: event_hash, project_id: project_id)
    end
  end
end
