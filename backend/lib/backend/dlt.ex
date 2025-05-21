defmodule Backend.DLT do
  @moduledoc """
  The DLT context.
  """

  import Ecto.Query, warn: false
  alias Backend.Repo

  alias Backend.DLT.DltEntity

  @doc """
  Returns the list of dlt_entities.

  ## Examples

      iex> list_dlt_entities()
      [%DltEntity{}, ...]

  """
  def list_dlt_entities do
    Repo.all(DltEntity)
  end

  @doc """
  Gets a single dlt_entity.

  Raises `Ecto.NoResultsError` if the Dlt entity does not exist.

  ## Examples

      iex> get_dlt_entity!(123)
      %DltEntity{}

      iex> get_dlt_entity!(456)
      ** (Ecto.NoResultsError)

  """
  def get_dlt_entity!(id), do: Repo.get!(DltEntity, id)

  @doc """
  Creates a dlt_entity.

  ## Examples

      iex> create_dlt_entity(%{field: value})
      {:ok, %DltEntity{}}

      iex> create_dlt_entity(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_dlt_entity(attrs \\ %{}) do
    %DltEntity{}
    |> DltEntity.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a dlt_entity.

  ## Examples

      iex> update_dlt_entity(dlt_entity, %{field: new_value})
      {:ok, %DltEntity{}}

      iex> update_dlt_entity(dlt_entity, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_dlt_entity(%DltEntity{} = dlt_entity, attrs) do
    dlt_entity
    |> DltEntity.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a dlt_entity.

  ## Examples

      iex> delete_dlt_entity(dlt_entity)
      {:ok, %DltEntity{}}

      iex> delete_dlt_entity(dlt_entity)
      {:error, %Ecto.Changeset{}}

  """
  def delete_dlt_entity(%DltEntity{} = dlt_entity) do
    Repo.delete(dlt_entity)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking dlt_entity changes.

  ## Examples

      iex> change_dlt_entity(dlt_entity)
      %Ecto.Changeset{data: %DltEntity{}}

  """
  def change_dlt_entity(%DltEntity{} = dlt_entity, attrs \\ %{}) do
    DltEntity.changeset(dlt_entity, attrs)
  end

  alias Backend.DLT.Header

  @doc """
  Returns the list of headers.

  ## Examples

      iex> list_headers()
      [%Header{}, ...]

  """
  def list_headers do
    Repo.all(Header)
  end

  @doc """
  Gets a single header.

  Raises `Ecto.NoResultsError` if the Header does not exist.

  ## Examples

      iex> get_header!(123)
      %Header{}

      iex> get_header!(456)
      ** (Ecto.NoResultsError)

  """
  def get_header!(id), do: Repo.get!(Header, id)

  @doc """
  Creates a header.

  ## Examples

      iex> create_header(%{field: value})
      {:ok, %Header{}}

      iex> create_header(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_header(attrs \\ %{}) do
    %Header{}
    |> Header.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a header.

  ## Examples

      iex> update_header(header, %{field: new_value})
      {:ok, %Header{}}

      iex> update_header(header, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_header(%Header{} = header, attrs) do
    header
    |> Header.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a header.

  ## Examples

      iex> delete_header(header)
      {:ok, %Header{}}

      iex> delete_header(header)
      {:error, %Ecto.Changeset{}}

  """
  def delete_header(%Header{} = header) do
    Repo.delete(header)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking header changes.

  ## Examples

      iex> change_header(header)
      %Ecto.Changeset{data: %Header{}}

  """
  def change_header(%Header{} = header, attrs \\ %{}) do
    Header.changeset(header, attrs)
  end

  alias Backend.DLT.Template

  @doc """
  Returns the list of templates.

  ## Examples

      iex> list_templates()
      [%Template{}, ...]

  """
  def list_templates do
    Repo.all(Template)
  end

  @doc """
  Gets a single template.

  Raises `Ecto.NoResultsError` if the Template does not exist.

  ## Examples

      iex> get_template!(123)
      %Template{}

      iex> get_template!(456)
      ** (Ecto.NoResultsError)

  """
  def get_template!(id), do: Repo.get!(Template, id)

  @doc """
  Creates a template.

  ## Examples

      iex> create_template(%{field: value})
      {:ok, %Template{}}

      iex> create_template(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_template(attrs \\ %{}) do
    %Template{}
    |> Template.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a template.

  ## Examples

      iex> update_template(template, %{field: new_value})
      {:ok, %Template{}}

      iex> update_template(template, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_template(%Template{} = template, attrs) do
    template
    |> Template.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a template.

  ## Examples

      iex> delete_template(template)
      {:ok, %Template{}}

      iex> delete_template(template)
      {:error, %Ecto.Changeset{}}

  """
  def delete_template(%Template{} = template) do
    Repo.delete(template)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking template changes.

  ## Examples

      iex> change_template(template)
      %Ecto.Changeset{data: %Template{}}

  """
  def change_template(%Template{} = template, attrs \\ %{}) do
    Template.changeset(template, attrs)
  end
end
