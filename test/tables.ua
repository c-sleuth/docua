~ "../lib.ua" ~ Break Heading Image Paragraph Render Table

Table
Table.Align "left"
Table.Caption "this is the caption"
Table.Header {"header 1" "header 2"}
Table.Cells {
  {"row 1 cell 1" "row 1 cell 2"}
  {"row 2 cell 1" "row 2 cell 2"}
}
Table.Show

Table
Table.Header {"Image Table"}
Table.Cells {
  {"here is the image" Image.Embed Image "cat.png"}
}
Table.Show

Csv ← (
  $ heading 1,heading 2
  $ foo,bar
  $ baz,raz
)

Table
Table.Caption "csv table"
Table.FromCsv Csv
Table.Show

Render
&fwa "tables.html"
