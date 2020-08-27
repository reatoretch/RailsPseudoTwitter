class AddUploadFileToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :upload_file, :binary
  end
end
