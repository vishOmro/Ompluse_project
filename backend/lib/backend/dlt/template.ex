defmodule Backend.DLT.Template do
  use Ecto.Schema
  import Ecto.Changeset

  schema "templates" do
    field :template_id, Ecto.UUID
    field :template_content, :string
    field :template_type, :string
    field :template_status, :string
    field :dlt_template_id, :string
    field :dlt_entity_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(template, attrs) do
    template
    |> cast(attrs, [:template_id, :template_content, :template_type, :template_status, :dlt_template_id])
    |> validate_required([:template_id, :template_content, :template_type, :template_status, :dlt_template_id])
  end
end
