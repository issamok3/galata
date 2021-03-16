class AddSpotifyUriToContent < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :spotify_uri, :string
  end
end
