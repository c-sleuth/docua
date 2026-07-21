# Experimental!

{} # this holds all the generated html

Heading   ← ˜⊂ □ $"<h_>_</h_>" ◠˜⋅∘ °⋕
Paragraph ← ˜⊂ □ $"<p>_</p>"
Break = back join box "<br/>"

┌─╴Table ~ Show
  ~ {HeaderRow ← {}|Alignment ← "center"|CellRows ← {}|Cap ← ""}
  Header      ← ⍜⊙Table.HeaderRow⊂
  Cells       ← ⍜⊙Table.CellRows⊂
  Align       ← °⊸Table.Alignment
  Caption     ← °⊸Table.Cap
  FormatCells = /$"__" inv $"<tr>_</tr>" inv /$"__" inv inv $"<td>_</td>"
  Text ← (
    ⊃($"<div data-align=\"_\">" Alignment
    | $"<caption>_</caption>" Cap
    | /$"__" ⍚$"<th><p>_</p></th>" HeaderRow
    | /$"__" FormatCells CellRows
    )
    □ $" _ <table> _ <thead> <tr> _ </tr> </thead> <tbody> _ </tbody> </table> </div> "
  )
  Show ← (
    ⊃($"<div data-align=\"_\">" Alignment
    | $"<caption>_</caption>" Cap
    | /$"__" ⍚$"<th><p>_</p></th>" HeaderRow
    | /$"__" FormatCells CellRows
    )
    ˜⊂ □ $" _ <table> _ <thead> <tr> _ </tr> </thead> <tbody> _ </tbody> </table> </div> "
  )

└─╴

┌─╴Image ~ Show
  ~ {FilePath DefaultHeight ← "auto"|DefaultWidth ← "auto"}
  Height ← °⊸Image.DefaultHeight
  Width  ← °⊸Image.DefaultWidth
  Text ← (
    ⊃(Image.FilePath|Image.DefaultHeight|Image.DefaultWidth)
    □ $"<img src=\"_\" style=\"height:_;width:_;\"/>"
  )
  Show ← (
    ⊃(Image.FilePath|Image.DefaultHeight|Image.DefaultWidth)
    ˜⊂ □ $"<img src=\"_\" style=\"height:_;width:_;\"/>"
  )
└─╴

CSS ← $ html{box-sizing:border-box;background:#e5e5e5}*,*::after,*::before{box-sizing:inherit}body{margin:0;padding:40px 20px;color:#000;background:#e5e5e5;font-family:Calibri, "Segoe UI", Arial, sans-serif;font-size:11pt;line-height:1.15}.document{width:210mm;min-height:297mm;margin:0 auto;padding:25.4mm;background:#fff;box-shadow:0 1px 3px rgba(0, 0, 0, 0.12), 0 8px 24px rgba(0, 0, 0, 0.12)}.document p{margin:0 0 8pt}.document h1,.document h2,.document h3,.document h4{margin-top:12pt;margin-bottom:6pt;page-break-after:avoid;break-after:avoid;font-family:Calibri, "Segoe UI", Arial, sans-serif;font-weight:400;color:#2f5496}.document h1{font-size:16pt}.document h2{font-size:13pt}.document h3{font-size:12pt}.document h4{font-size:11pt;font-style:italic}.document ol,.document ul{margin-top:0;margin-bottom:8pt;padding-left:36pt}.document li{margin-bottom:3pt}.document a{color:#0563c1;text-decoration:underline}.document img{max-width:100%;height:auto}.document table{width:100%;margin:8pt 0;border-collapse:collapse;border-spacing:0;font-size:11pt;page-break-inside:avoid;break-inside:avoid}.document caption{margin-bottom:6pt;font-weight:600;text-align:left}.document td,.document th{padding:5pt 7pt;border:1px solid #a6a6a6;vertical-align:top;text-align:left}.document th{background:#d9e2f3;font-weight:700}.document td p,.document th p{margin:0}.document [data-align="left"]{text-align:left}.document [data-align="center"]{text-align:center}.document [data-align="right"]{text-align:right}.document [data-align="justify"]{text-align:justify}.document blockquote{margin:8pt 36pt;padding-left:12pt;border-left:3px solid #bfbfbf;color:#444}.document hr{margin:12pt 0;border:0;border-top:1px solid #bfbfbf}.page-break{break-before:page;page-break-before:always}@page{size:A4;margin:25.4mm}@media print{body,html{background:#fff}body{padding:0}.document{width:auto;min-height:auto;margin:0;padding:0;box-shadow:none}thead{display:table-header-group}blockquote,img,tr{break-inside:avoid;page-break-inside:avoid}}@media screen and (max-width: 900px){body{padding:16px}.document{width:100%;min-height:auto;padding:clamp(24px, 7vw, 72px)}}

Render ← (
  /$"__"
  CSS # TODO: Make this optional with something like ~Config 
  $"<html> <head><style>_</style></head><body><main class=\"document\">_</main></body> </html>"
)
