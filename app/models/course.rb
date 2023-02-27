# frozen_string_literal: true

class Course < ApplicationRecord
  validates :title,  :short_description, :language, :level, :price,  presence: true
  validates :description, presence: true, length: { minimum: 5 }

  belongs_to :user
  has_many :lessons, dependent: :destroy
  has_many :enrollments, dependent: :destroy

  def to_s
    title
  end
  has_rich_text :description

  extend FriendlyId
  friendly_id :title, use: :slugged

  LANGUAGES = %i[English Spanish Russian].freeze
  def self.languages
    LANGUAGES.map { |language| [language, language] }
  end

  LEVELS = %i[Beginner Intermediate Advanced].freeze
  def self.levels
    LEVELS.map { |level| [level, level] }
  end

  include PublicActivity::Model
  tracked owner: proc { |controller, model| controller.current_user }

  def bought(user)
    enrollments.where(user_id: [user.id], course_id: [id]).empty?
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "language", "level", "price", "short_description", "slug", "title", "updated_at", "user_id"]
  end
  
  def self.ransackable_associations(auth_object = nil)
    ["activities", "enrollments", "lessons", "rich_text_description", "user"]
  end

end
