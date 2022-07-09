defmodule FileUploader.Repo.Migrations.CreatePhotos do
  use Ecto.Migration

  def change do
    create table(:photos) do
      add :picture, :string

      timestamps()
    end
  end
end
