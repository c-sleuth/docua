~ "../lib.ua" ~ Heading Image Paragraph Render Table

# Experimental!

Heading 1 "Uiua Markup"

Paragraph "wooo hoooo"

Paragraph "here is a table"

Table
Table.Align "left"
Table.Caption "this is the caption"
Table.Header {"header 1" "header 2"}
Table.Cells {
  {"row 1 cell 1" "row 1 cell 2"}
  {"row 2 cell 1" "row 2 cell 2"}
}
Table.Show

Paragraph "here is an image"

Image "cat.png"
Image.Width "10cm"
Image.Height "10cm"
Image.Show

Heading 2 "Image in Table"

Table
Table.Header {"Image Table"}
Table.Cells {
  {"here is the image" Image.Text Image "cat.png"}
}
Table.Show

Render
&fwa "index.html"
