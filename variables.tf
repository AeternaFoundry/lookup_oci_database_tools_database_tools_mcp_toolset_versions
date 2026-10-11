variable "database_tools_database_tools_mcp_toolset_versions_lookup" {
  description = <<EOT
Map of database_tools_database_tools_mcp_toolset_versions_lookup, attributes below
Required:
    - compartment_id
Optional:
    - database_tools_mcp_server_id
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id               = string
    database_tools_mcp_server_id = optional(string)
    display_name                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

