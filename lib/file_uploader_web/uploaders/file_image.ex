defmodule FileUploader.FileImage do
  use Waffle.Definition
  use Waffle.Ecto.Definition

  # Whitelist file extensions:
  def validate({file, _}) do
    file_extension = file.file_name |> Path.extname() |> String.downcase()

    case Enum.member?(~w(.jpg .jpeg .gif .png), file_extension) do
      true -> :ok
      false -> {:error, "invalid file type"}
    end
  end
end
