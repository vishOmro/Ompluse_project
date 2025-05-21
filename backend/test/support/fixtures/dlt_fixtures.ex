defmodule Backend.DLTFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Backend.DLT` context.
  """

  @doc """
  Generate a dlt_entity.
  """
  def dlt_entity_fixture(attrs \\ %{}) do
    {:ok, dlt_entity} =
      attrs
      |> Enum.into(%{

        cin: "some cin",
        entity_id: "7488a646-e31f-11e4-aace-600308960662",
        entity_type: "some entity_type",
        gst: "some gst",
        letter_of_authorization_url: "some letter_of_authorization_url",
        pan: "some pan",
        tan: "some tan",
        telecom_operator: "some telecom_operator",
        ueid: "some ueid",
        verification_status: "some verification_status"
      })
      |> Backend.DLT.create_dlt_entity()

    dlt_entity
  end

  @doc """
  Generate a header.
  """
  def header_fixture(attrs \\ %{}) do
    {:ok, header} =
      attrs
      |> Enum.into(%{
        dlt_header_id: "some dlt_header_id",
        header_code: "some header_code",
        header_id: "7488a646-e31f-11e4-aace-600308960662",
        header_purpose: "some header_purpose",
        header_status: "some header_status"
      })
      |> Backend.DLT.create_header()

    header
  end

  @doc """
  Generate a template.
  """
  def template_fixture(attrs \\ %{}) do
    {:ok, template} =
      attrs
      |> Enum.into(%{
        dlt_template_id: "some dlt_template_id",
        template_content: "some template_content",
        template_id: "7488a646-e31f-11e4-aace-600308960662",
        template_status: "some template_status",
        template_type: "some template_type"
      })
      |> Backend.DLT.create_template()

    template
  end
end
