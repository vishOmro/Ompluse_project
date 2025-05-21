defmodule Backend.CampaignsTest do
  use Backend.DataCase

  alias Backend.Campaigns

  describe "campaigns" do
    alias Backend.Campaigns.Campaign

    import Backend.CampaignsFixtures

    @invalid_attrs %{status: nil, campaign_id: nil, campaign_name: nil, scheduled_time: nil}

    test "list_campaigns/0 returns all campaigns" do
      campaign = campaign_fixture()
      assert Campaigns.list_campaigns() == [campaign]
    end

    test "get_campaign!/1 returns the campaign with given id" do
      campaign = campaign_fixture()
      assert Campaigns.get_campaign!(campaign.id) == campaign
    end

    test "create_campaign/1 with valid data creates a campaign" do
      valid_attrs = %{status: "some status", campaign_id: "7488a646-e31f-11e4-aace-600308960662", campaign_name: "some campaign_name", scheduled_time: ~U[2025-05-20 12:22:00Z]}

      assert {:ok, %Campaign{} = campaign} = Campaigns.create_campaign(valid_attrs)
      assert campaign.status == "some status"
      assert campaign.campaign_id == "7488a646-e31f-11e4-aace-600308960662"
      assert campaign.campaign_name == "some campaign_name"
      assert campaign.scheduled_time == ~U[2025-05-20 12:22:00Z]
    end

    test "create_campaign/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Campaigns.create_campaign(@invalid_attrs)
    end

    test "update_campaign/2 with valid data updates the campaign" do
      campaign = campaign_fixture()
      update_attrs = %{status: "some updated status", campaign_id: "7488a646-e31f-11e4-aace-600308960668", campaign_name: "some updated campaign_name", scheduled_time: ~U[2025-05-21 12:22:00Z]}

      assert {:ok, %Campaign{} = campaign} = Campaigns.update_campaign(campaign, update_attrs)
      assert campaign.status == "some updated status"
      assert campaign.campaign_id == "7488a646-e31f-11e4-aace-600308960668"
      assert campaign.campaign_name == "some updated campaign_name"
      assert campaign.scheduled_time == ~U[2025-05-21 12:22:00Z]
    end

    test "update_campaign/2 with invalid data returns error changeset" do
      campaign = campaign_fixture()
      assert {:error, %Ecto.Changeset{}} = Campaigns.update_campaign(campaign, @invalid_attrs)
      assert campaign == Campaigns.get_campaign!(campaign.id)
    end

    test "delete_campaign/1 deletes the campaign" do
      campaign = campaign_fixture()
      assert {:ok, %Campaign{}} = Campaigns.delete_campaign(campaign)
      assert_raise Ecto.NoResultsError, fn -> Campaigns.get_campaign!(campaign.id) end
    end

    test "change_campaign/1 returns a campaign changeset" do
      campaign = campaign_fixture()
      assert %Ecto.Changeset{} = Campaigns.change_campaign(campaign)
    end
  end
end
