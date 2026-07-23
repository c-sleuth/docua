# docua

Turn Uiua into a markup style language.

After adding all the elements to the document `Render` can
be called which will output an HTML file in the format of
a string. Also included in this string is CSS to format the
HTML page like a document rather than a web page.


## Headings

Headings can be created like this

```uiua
Heading 1 "Uiua Markup"
```
The number indicates the level of the heading

## Paragraph

Text and paragraphs can be add in like this

```uiua
Paragraph "hello world"
```

## Figures

Figures can be add like this

```uiua
Figure (
  Image.Embed Image "cat.png"
)
Figure.Caption "this is a picture"
Figure.Show
```

## Tables

Tables can be written out manually like this

```uiua
Table
Table.Align "left"
Table.Caption "this is the caption"
Table.Header {"header 1" "header 2"}
Table.Cells {
  {"row 1 cell 1" "row 1 cell 2"}
  {"row 2 cell 1" "row 2 cell 2"}
}
Table.Show
```
or tables can be created for a csv

```uiua
Csv ← (
  $ heading 1,heading 2
  $ foo,bar
  $ baz,raz
)
Table
Table.FromCsv Csv
Table.show
```

## Images

Images can be added like this.

```uiua
Image "cat.png"
Image.Width "10cm"  # optional
Image.Height "10cm" # optional
Image.Show
```

## Blockquote 

Blockquotes can be added like this.

```uiua
Blockquote "Some quote goes here"
Blockquote.Cite "Who said it" # optional
Blockquote.Show
```

## List

Lists can be added like this

```uiua
List {"foo" "bar"}
List.Show 
```

_Note: only unordered lists are supported as of right now._

## Term List

Term Lists can be added like this

```uiua
Term {
  {"Coffee" "Black hot drink"}
  {"Milk" "White cold drink"}
}
Term.Show
```
