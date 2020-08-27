class RemoveUploadFileFromTweets < ActiveRecord::Migration[6.0]
  def change
    remove_column :tweets, :upload_file, :binary
  end
end
