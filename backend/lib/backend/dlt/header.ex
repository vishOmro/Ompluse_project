defmodule Backend.DLT.Header do
  use Ecto.Schema
  import Ecto.Changeset

  schema "headers" do
    field :header_id, Ecto.UUID
    field :header_code, :string
    field :header_purpose, :string
    field :header_status, :string
    field :dlt_header_id, :string
    field :dlt_entity_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(header, attrs) do
    header
    |> cast(attrs, [:header_id, :header_code, :header_purpose, :header_status, :dlt_header_id])
    |> validate_required([:header_id, :header_code, :header_purpose, :header_status, :dlt_header_id])
  end
end
