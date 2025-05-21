defmodule Backend.Repo.Migrations.CreateDltEntities do
  use Ecto.Migration

  def change do
    create table(:dlt_entities) do

      add :entity_id, :uuid

      add :ueid, :string
      add :entity_type, :string

      add :pan, :string

      add :gst, :string

      add :tan, :string
      add :cin, :string
      add :letter_of_authorization_url, :string
      add :verification_status, :string
      add :telecom_operator, :string
      add :user_id, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:dlt_entities, [:user_id])
  end
end
