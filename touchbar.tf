resource "local_file" "mtmr" {
  content = file("${path.module}/files/mtmr.json")

  filename = pathexpand("~/Library/Application Support/MTMR/items.json")
}
