defmodule Backend.Repo.Migrations.CreateCampaigns do
  use Ecto.Migration

  def change do
    create table(:campaigns) do
      add :campaign_id, :uuid
      add :campaign_name, :string
      add :scheduled_time, :utc_datetime
      add :status, :string
      add :user_id, references(:users, on_delete: :nothing)
      add :header_id, references(:headers, on_delete: :nothing)
      add :template_id, references(:templates, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:campaigns, [:user_id])
    create index(:campaigns, [:header_id])
    create index(:campaigns, [:template_id])
  end
end
