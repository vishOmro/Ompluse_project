defmodule Backend.CampaignsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Backend.Campaigns` context.
  """

  @doc """
  Generate a campaign.
  """
  def campaign_fixture(attrs \\ %{}) do
    {:ok, campaign} =
      attrs
      |> Enum.into(%{
        campaign_id: "7488a646-e31f-11e4-aace-600308960662",
        campaign_name: "some campaign_name",
        scheduled_time: ~U[2025-05-20 12:22:00Z],
        status: "some status"
      })
      |> Backend.Campaigns.create_campaign()

    campaign
  end
end
