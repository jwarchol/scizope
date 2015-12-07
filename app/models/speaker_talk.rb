class SpeakerTalk < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :talk
end
