variable "transcribe_medical_vocabularies" {
  description = <<EOT
Map of transcribe_medical_vocabularies, attributes below
Required:
    - language_code
    - vocabulary_file_uri
    - vocabulary_name
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    language_code       = string
    vocabulary_file_uri = string
    vocabulary_name     = string
    region              = optional(string)
    tags                = optional(map(string))
    tags_all            = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.transcribe_medical_vocabularies : (
        length(v.vocabulary_file_uri) >= 1 && length(v.vocabulary_file_uri) <= 2000
      )
    ])
    error_message = "must be between 1 and 2000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.transcribe_medical_vocabularies : (
        length(v.vocabulary_name) >= 1 && length(v.vocabulary_name) <= 200
      )
    ])
    error_message = "must be between 1 and 200 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

