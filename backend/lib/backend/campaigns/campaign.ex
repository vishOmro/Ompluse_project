defmodule Backend.Campaigns.Campaign do
  use Ecto.Schema
  import Ecto.Changeset

  schema "campaigns" do
    field :status, :string
    field :campaign_id, Ecto.UUID
    field :campaign_name, :string
    field :scheduled_time, :utc_datetime
    field :user_id, :id
    field :header_id, :id
    field :template_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(campaign, attrs) do
    campaign
    |> cast(attrs, [:campaign_id, :campaign_name, :scheduled_time, :status])
    |> validate_required([:campaign_id, :campaign_name, :scheduled_time, :status])
  end
end
