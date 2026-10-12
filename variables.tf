variable "functions" {
  description = <<EOT
Map of functions, attributes below
Required:
    - body
    - name
Optional:
    - database
    - drop_cascade
    - language
    - parallel
    - returns
    - schema
    - security_definer
    - strict
    - volatility
    - arg (block):
        - default (optional)
        - mode (optional)
        - name (optional)
        - type (required)
EOT

  type = map(object({
    body             = string
    name             = string
    database         = optional(string)
    drop_cascade     = optional(bool)
    language         = optional(string)
    parallel         = optional(string)
    returns          = optional(string)
    schema           = optional(string)
    security_definer = optional(bool)
    strict           = optional(bool)
    volatility       = optional(string)
    arg = optional(list(object({
      default = optional(string)
      mode    = optional(string)
      name    = optional(string)
      type    = string
    })))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

