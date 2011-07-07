Factory.sequence(:comment_text) { |n| "Comment #{n}" }

Factory.define :comment do |c|
  c.comment_text { |_| Factory.next(:comment_text) }
  c.commentable { Factory(:submission) }
  c.association :user
end
