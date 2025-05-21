defmodule Backend.Repo.Migrations.CreateTemplates do
  use Ecto.Migration

  def change do
    create table(:templates) do
      add :template_id, :uuid
      add :template_content, :text
      add :template_type, :string
      add :template_status, :string
      add :dlt_template_id, :string
      add :dlt_entity_id, references(:dlt_entities, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:templates, [:dlt_entity_id])
  end
end
