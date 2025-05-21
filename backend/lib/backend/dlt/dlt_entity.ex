defmodule Backend.DLT.DltEntity do
  use Ecto.Schema
  import Ecto.Changeset

  schema "dlt_entities" do
    field :tan, :string
    field :gst, :string
    field :entity_id, Ecto.UUID
    field :ueid, :string
    field :entity_type, :string
    field :pan, :string
    field :cin, :string
    field :letter_of_authorization_url, :string
    field :verification_status, :string
    field :telecom_operator, :string
    belongs_to :user, Backend.Accounts.User, foreign_key: :user_id, type: :binary_id
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(dlt_entity, attrs) do
    dlt_entity
    |> cast(attrs, [ :ueid, :entity_type, :pan, :gst, :tan, :cin, :letter_of_authorization_url, :verification_status, :telecom_operator,])
    |> validate_required([ :ueid, :entity_type])
    |> unique_constraint(:ueid)
    |>foreign_key_constraint(:user_id)
  end
end
