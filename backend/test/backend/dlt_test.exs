defmodule Backend.DLTTest do
  use Backend.DataCase

  alias Backend.DLT

  describe "dlt_entities" do
    alias Backend.DLT.DltEntity

    import Backend.DLTFixtures

    @invalid_attrs %{"\\": nil}

    test "list_dlt_entities/0 returns all dlt_entities" do
      dlt_entity = dlt_entity_fixture()
      assert DLT.list_dlt_entities() == [dlt_entity]
    end

    test "get_dlt_entity!/1 returns the dlt_entity with given id" do
      dlt_entity = dlt_entity_fixture()
      assert DLT.get_dlt_entity!(dlt_entity.id) == dlt_entity
    end

    test "create_dlt_entity/1 with valid data creates a dlt_entity" do
      valid_attrs = %{"\\": "some \\"}

      assert {:ok, %DltEntity{} = dlt_entity} = DLT.create_dlt_entity(valid_attrs)
      assert dlt_entity.\ == "some \\"
    end

    test "create_dlt_entity/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = DLT.create_dlt_entity(@invalid_attrs)
    end

    test "update_dlt_entity/2 with valid data updates the dlt_entity" do
      dlt_entity = dlt_entity_fixture()
      update_attrs = %{"\\": "some updated \\"}

      assert {:ok, %DltEntity{} = dlt_entity} = DLT.update_dlt_entity(dlt_entity, update_attrs)
      assert dlt_entity.\ == "some updated \\"
    end

    test "update_dlt_entity/2 with invalid data returns error changeset" do
      dlt_entity = dlt_entity_fixture()
      assert {:error, %Ecto.Changeset{}} = DLT.update_dlt_entity(dlt_entity, @invalid_attrs)
      assert dlt_entity == DLT.get_dlt_entity!(dlt_entity.id)
    end

    test "delete_dlt_entity/1 deletes the dlt_entity" do
      dlt_entity = dlt_entity_fixture()
      assert {:ok, %DltEntity{}} = DLT.delete_dlt_entity(dlt_entity)
      assert_raise Ecto.NoResultsError, fn -> DLT.get_dlt_entity!(dlt_entity.id) end
    end

    test "change_dlt_entity/1 returns a dlt_entity changeset" do
      dlt_entity = dlt_entity_fixture()
      assert %Ecto.Changeset{} = DLT.change_dlt_entity(dlt_entity)
    end
  end

  describe "dlt_entities" do
    alias Backend.DLT.DltEntity

    import Backend.DLTFixtures

    @invalid_attrs %{tan: nil, "\\": nil, gst: nil, entity_id: nil, ueid: nil, entity_type: nil, pan: nil, cin: nil, letter_of_authorization_url: nil, verification_status: nil, telecom_operator: nil}

    test "list_dlt_entities/0 returns all dlt_entities" do
      dlt_entity = dlt_entity_fixture()
      assert DLT.list_dlt_entities() == [dlt_entity]
    end

    test "get_dlt_entity!/1 returns the dlt_entity with given id" do
      dlt_entity = dlt_entity_fixture()
      assert DLT.get_dlt_entity!(dlt_entity.id) == dlt_entity
    end

    test "create_dlt_entity/1 with valid data creates a dlt_entity" do
      valid_attrs = %{tan: "some tan", "\\": "some \\", gst: "some gst", entity_id: "7488a646-e31f-11e4-aace-600308960662", ueid: "some ueid", entity_type: "some entity_type", pan: "some pan", cin: "some cin", letter_of_authorization_url: "some letter_of_authorization_url", verification_status: "some verification_status", telecom_operator: "some telecom_operator"}

      assert {:ok, %DltEntity{} = dlt_entity} = DLT.create_dlt_entity(valid_attrs)
      assert dlt_entity.tan == "some tan"
      assert dlt_entity.\ == "some \\"
      assert dlt_entity.gst == "some gst"
      assert dlt_entity.entity_id == "7488a646-e31f-11e4-aace-600308960662"
      assert dlt_entity.ueid == "some ueid"
      assert dlt_entity.entity_type == "some entity_type"
      assert dlt_entity.pan == "some pan"
      assert dlt_entity.cin == "some cin"
      assert dlt_entity.letter_of_authorization_url == "some letter_of_authorization_url"
      assert dlt_entity.verification_status == "some verification_status"
      assert dlt_entity.telecom_operator == "some telecom_operator"
    end

    test "create_dlt_entity/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = DLT.create_dlt_entity(@invalid_attrs)
    end

    test "update_dlt_entity/2 with valid data updates the dlt_entity" do
      dlt_entity = dlt_entity_fixture()
      update_attrs = %{tan: "some updated tan", "\\": "some updated \\", gst: "some updated gst", entity_id: "7488a646-e31f-11e4-aace-600308960668", ueid: "some updated ueid", entity_type: "some updated entity_type", pan: "some updated pan", cin: "some updated cin", letter_of_authorization_url: "some updated letter_of_authorization_url", verification_status: "some updated verification_status", telecom_operator: "some updated telecom_operator"}

      assert {:ok, %DltEntity{} = dlt_entity} = DLT.update_dlt_entity(dlt_entity, update_attrs)
      assert dlt_entity.tan == "some updated tan"
      assert dlt_entity.\ == "some updated \\"
      assert dlt_entity.gst == "some updated gst"
      assert dlt_entity.entity_id == "7488a646-e31f-11e4-aace-600308960668"
      assert dlt_entity.ueid == "some updated ueid"
      assert dlt_entity.entity_type == "some updated entity_type"
      assert dlt_entity.pan == "some updated pan"
      assert dlt_entity.cin == "some updated cin"
      assert dlt_entity.letter_of_authorization_url == "some updated letter_of_authorization_url"
      assert dlt_entity.verification_status == "some updated verification_status"
      assert dlt_entity.telecom_operator == "some updated telecom_operator"
    end

    test "update_dlt_entity/2 with invalid data returns error changeset" do
      dlt_entity = dlt_entity_fixture()
      assert {:error, %Ecto.Changeset{}} = DLT.update_dlt_entity(dlt_entity, @invalid_attrs)
      assert dlt_entity == DLT.get_dlt_entity!(dlt_entity.id)
    end

    test "delete_dlt_entity/1 deletes the dlt_entity" do
      dlt_entity = dlt_entity_fixture()
      assert {:ok, %DltEntity{}} = DLT.delete_dlt_entity(dlt_entity)
      assert_raise Ecto.NoResultsError, fn -> DLT.get_dlt_entity!(dlt_entity.id) end
    end

    test "change_dlt_entity/1 returns a dlt_entity changeset" do
      dlt_entity = dlt_entity_fixture()
      assert %Ecto.Changeset{} = DLT.change_dlt_entity(dlt_entity)
    end
  end

  describe "headers" do
    alias Backend.DLT.Header

    import Backend.DLTFixtures

    @invalid_attrs %{header_id: nil, header_code: nil, header_purpose: nil, header_status: nil, dlt_header_id: nil}

    test "list_headers/0 returns all headers" do
      header = header_fixture()
      assert DLT.list_headers() == [header]
    end

    test "get_header!/1 returns the header with given id" do
      header = header_fixture()
      assert DLT.get_header!(header.id) == header
    end

    test "create_header/1 with valid data creates a header" do
      valid_attrs = %{header_id: "7488a646-e31f-11e4-aace-600308960662", header_code: "some header_code", header_purpose: "some header_purpose", header_status: "some header_status", dlt_header_id: "some dlt_header_id"}

      assert {:ok, %Header{} = header} = DLT.create_header(valid_attrs)
      assert header.header_id == "7488a646-e31f-11e4-aace-600308960662"
      assert header.header_code == "some header_code"
      assert header.header_purpose == "some header_purpose"
      assert header.header_status == "some header_status"
      assert header.dlt_header_id == "some dlt_header_id"
    end

    test "create_header/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = DLT.create_header(@invalid_attrs)
    end

    test "update_header/2 with valid data updates the header" do
      header = header_fixture()
      update_attrs = %{header_id: "7488a646-e31f-11e4-aace-600308960668", header_code: "some updated header_code", header_purpose: "some updated header_purpose", header_status: "some updated header_status", dlt_header_id: "some updated dlt_header_id"}

      assert {:ok, %Header{} = header} = DLT.update_header(header, update_attrs)
      assert header.header_id == "7488a646-e31f-11e4-aace-600308960668"
      assert header.header_code == "some updated header_code"
      assert header.header_purpose == "some updated header_purpose"
      assert header.header_status == "some updated header_status"
      assert header.dlt_header_id == "some updated dlt_header_id"
    end

    test "update_header/2 with invalid data returns error changeset" do
      header = header_fixture()
      assert {:error, %Ecto.Changeset{}} = DLT.update_header(header, @invalid_attrs)
      assert header == DLT.get_header!(header.id)
    end

    test "delete_header/1 deletes the header" do
      header = header_fixture()
      assert {:ok, %Header{}} = DLT.delete_header(header)
      assert_raise Ecto.NoResultsError, fn -> DLT.get_header!(header.id) end
    end

    test "change_header/1 returns a header changeset" do
      header = header_fixture()
      assert %Ecto.Changeset{} = DLT.change_header(header)
    end
  end

  describe "templates" do
    alias Backend.DLT.Template

    import Backend.DLTFixtures

    @invalid_attrs %{template_id: nil, template_content: nil, template_type: nil, template_status: nil, dlt_template_id: nil}

    test "list_templates/0 returns all templates" do
      template = template_fixture()
      assert DLT.list_templates() == [template]
    end

    test "get_template!/1 returns the template with given id" do
      template = template_fixture()
      assert DLT.get_template!(template.id) == template
    end

    test "create_template/1 with valid data creates a template" do
      valid_attrs = %{template_id: "7488a646-e31f-11e4-aace-600308960662", template_content: "some template_content", template_type: "some template_type", template_status: "some template_status", dlt_template_id: "some dlt_template_id"}

      assert {:ok, %Template{} = template} = DLT.create_template(valid_attrs)
      assert template.template_id == "7488a646-e31f-11e4-aace-600308960662"
      assert template.template_content == "some template_content"
      assert template.template_type == "some template_type"
      assert template.template_status == "some template_status"
      assert template.dlt_template_id == "some dlt_template_id"
    end

    test "create_template/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = DLT.create_template(@invalid_attrs)
    end

    test "update_template/2 with valid data updates the template" do
      template = template_fixture()
      update_attrs = %{template_id: "7488a646-e31f-11e4-aace-600308960668", template_content: "some updated template_content", template_type: "some updated template_type", template_status: "some updated template_status", dlt_template_id: "some updated dlt_template_id"}

      assert {:ok, %Template{} = template} = DLT.update_template(template, update_attrs)
      assert template.template_id == "7488a646-e31f-11e4-aace-600308960668"
      assert template.template_content == "some updated template_content"
      assert template.template_type == "some updated template_type"
      assert template.template_status == "some updated template_status"
      assert template.dlt_template_id == "some updated dlt_template_id"
    end

    test "update_template/2 with invalid data returns error changeset" do
      template = template_fixture()
      assert {:error, %Ecto.Changeset{}} = DLT.update_template(template, @invalid_attrs)
      assert template == DLT.get_template!(template.id)
    end

    test "delete_template/1 deletes the template" do
      template = template_fixture()
      assert {:ok, %Template{}} = DLT.delete_template(template)
      assert_raise Ecto.NoResultsError, fn -> DLT.get_template!(template.id) end
    end

    test "change_template/1 returns a template changeset" do
      template = template_fixture()
      assert %Ecto.Changeset{} = DLT.change_template(template)
    end
  end
end
