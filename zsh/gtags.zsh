function "gtags" {
  find . -name "*.go" | xargs gotags > tags
}
