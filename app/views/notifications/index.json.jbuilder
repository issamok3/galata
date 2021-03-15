json.array! @notifications do |notification|
  json.id notification.id
  json.recipient notification.actor.username
  json.recipient notification.action
  json.notifiable do
    json.type "a #{notification.notifiable.class.to_s.downcase}"
  end
  json.url conversations_path(notification.notifiable.conversation, anchor: dom_id(notification.notifiable))
end
