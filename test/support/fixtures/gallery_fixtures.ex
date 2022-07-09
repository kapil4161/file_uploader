defmodule FileUploader.GalleryFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `FileUploader.Gallery` context.
  """

  @doc """
  Generate a photo.
  """
  def photo_fixture(attrs \\ %{}) do
    {:ok, photo} =
      attrs
      |> Enum.into(%{
        picture: "some picture"
      })
      |> FileUploader.Gallery.create_photo()

    photo
  end
end
