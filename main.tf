data "oci_database_tools_database_tools_mcp_toolset_versions" "database_tools_database_tools_mcp_toolset_versions_lookup" {
  for_each = var.database_tools_database_tools_mcp_toolset_versions_lookup

  compartment_id               = each.value.compartment_id
  database_tools_mcp_server_id = each.value.database_tools_mcp_server_id
  display_name                 = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

