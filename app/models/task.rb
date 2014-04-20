class Task < ActiveRecord::Base
  belongs_to :project
  default_scope -> { order('difficulty_level ASC') }
  validates :project_id, presence: true
  validates :difficulty_level, :numericality => { :greater_than => 0, :less_than_or_equal_to => 10 }
end
