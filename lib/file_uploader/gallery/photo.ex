defmodule FileUploader.Gallery.Photo do
  use Ecto.Schema
  use Waffle.Ecto.Schema
  import Ecto.Changeset

  schema "photos" do
    field :picture, FileUploader.FileImage.Type

    timestamps()
  end

  @doc false
  def changeset(photo, attrs) do
    photo
    |> cast_attachments(attrs, [:picture])
    |> validate_required([:picture])
  end
end
