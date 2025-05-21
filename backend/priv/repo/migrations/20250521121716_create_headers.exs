defmodule Backend.Repo.Migrations.CreateHeaders do
  use Ecto.Migration

  def change do
    create table(:headers) do
      add :header_id, :uuid
      add :header_code, :string
      add :header_purpose, :string
      add :header_status, :string
      add :dlt_header_id, :string
      add :dlt_entity_id, references(:dlt_entities, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:headers, [:dlt_entity_id])
  end
end
