class AddAttachmentMp3ToAudios < ActiveRecord::Migration
  def self.up
    change_table :audios do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :audios, :mp3
  end
end
