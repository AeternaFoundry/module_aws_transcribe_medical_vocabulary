output "transcribe_medical_vocabularies_id" {
  description = "Map of id values across all transcribe_medical_vocabularies, keyed the same as var.transcribe_medical_vocabularies"
  value       = { for k, v in aws_transcribe_medical_vocabulary.transcribe_medical_vocabularies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "transcribe_medical_vocabularies_arn" {
  description = "Map of arn values across all transcribe_medical_vocabularies, keyed the same as var.transcribe_medical_vocabularies"
  value       = { for k, v in aws_transcribe_medical_vocabulary.transcribe_medical_vocabularies : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "transcribe_medical_vocabularies_download_uri" {
  description = "Map of download_uri values across all transcribe_medical_vocabularies, keyed the same as var.transcribe_medical_vocabularies"
  value       = { for k, v in aws_transcribe_medical_vocabulary.transcribe_medical_vocabularies : k => v.download_uri if v.download_uri != null && length(v.download_uri) > 0 }
}
output "transcribe_medical_vocabularies_language_code" {
  description = "Map of language_code values across all transcribe_medical_vocabularies, keyed the same as var.transcribe_medical_vocabularies"
  value       = { for k, v in aws_transcribe_medical_vocabulary.transcribe_medical_vocabularies : k => v.language_code if v.language_code != null && length(v.language_code) > 0 }
}
output "transcribe_medical_vocabularies_region" {
  description = "Map of region values across all transcribe_medical_vocabularies, keyed the same as var.transcribe_medical_vocabularies"
  value       = { for k, v in aws_transcribe_medical_vocabulary.transcribe_medical_vocabularies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "transcribe_medical_vocabularies_tags" {
  description = "Map of tags values across all transcribe_medical_vocabularies, keyed the same as var.transcribe_medical_vocabularies"
  value       = { for k, v in aws_transcribe_medical_vocabulary.transcribe_medical_vocabularies : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "transcribe_medical_vocabularies_tags_all" {
  description = "Map of tags_all values across all transcribe_medical_vocabularies, keyed the same as var.transcribe_medical_vocabularies"
  value       = { for k, v in aws_transcribe_medical_vocabulary.transcribe_medical_vocabularies : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "transcribe_medical_vocabularies_vocabulary_file_uri" {
  description = "Map of vocabulary_file_uri values across all transcribe_medical_vocabularies, keyed the same as var.transcribe_medical_vocabularies"
  value       = { for k, v in aws_transcribe_medical_vocabulary.transcribe_medical_vocabularies : k => v.vocabulary_file_uri if v.vocabulary_file_uri != null && length(v.vocabulary_file_uri) > 0 }
}
output "transcribe_medical_vocabularies_vocabulary_name" {
  description = "Map of vocabulary_name values across all transcribe_medical_vocabularies, keyed the same as var.transcribe_medical_vocabularies"
  value       = { for k, v in aws_transcribe_medical_vocabulary.transcribe_medical_vocabularies : k => v.vocabulary_name if v.vocabulary_name != null && length(v.vocabulary_name) > 0 }
}

