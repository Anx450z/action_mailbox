class RepliesMailbox < ApplicationMailbox

  MATCHER = /support+(.+)@example.com/i
  
  def process
    return if user.nil?

    ticket.comments.create(user: user, body: mail.decoded)
  end

  def ticket
    user.ticket.find ticket_id
  end

  def ticket_id
    recipients = mail.recipients.find { |r| MATCHER.match?(r) }
    recipients[MATCHER, 1]
  end

  def user
    @user ||= User.find_by email: mail.from
  end
end
