class Contest

  def initialize(options ={})
    @notifer = options.fetch(:notifier) {
      ->(user, message) {
        puts "message to #{user}: #{message}"
      }
    }

  end
  def choose_winner
    @notifier.notify(winning_user, "you're a lucky winner!")

  end

  def notify_user_by_email(user, message)

  end
end

class User
  def send_sms(message)
    puts "sending SMS: #{message}"

  end
end

class FacebookNotifier
  def initialize(auth_info)
    @auth_info = auth_info
  end

  def call(user, message)
    # ...
  end
end
# ...
fb_notifier = FacebookNotifier.new(auth_info)
p c = Contest.new(notifier: fb_notifier)

p c = Contest.new(notifier: :send_sms.to_proc)
