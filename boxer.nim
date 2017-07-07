import json, strutils, colorize, sequtils, tables

let boxes = readFile("boxes.json").parseJson()

proc generatePadding(inside, side: string, padding: int): string =
  result = ("\n" & side & (" ".repeat(inside.len - 6)) & side).repeat(padding)

proc Boxer*(text: string, boxType: string = "round", padding: int = 0): string =
  let textLength = text.len
  if not boxes.hasKey(boxType): raise newException(ValueError, "The box type was not found.")
  let topLeft = boxes[boxType]["topLeft"].getStr()
  let topRight = boxes[boxType]["topRight"].getStr()
  let bottomLeft = boxes[boxType]["bottomLeft"].getStr()
  let bottomRight = boxes[boxType]["bottomRight"].getStr()
  let top = boxes[boxType]["horizontal"].getStr()
  let side = boxes[boxType]["vertical"].getStr()

  var border_top = topLeft & repeat(top, textLength + padding * 2) & topRight
  var inside = side & " ".repeat(padding) & text & " ".repeat(padding) & side
  var border_bottom = bottomLeft & repeat(top, textLength + padding * 2) & bottomRight

  # adding padding to the top
  border_top = border_top & generatePadding(inside, side, padding)

  # adding padding to the bottom
  inside = inside & generatePadding(inside, side, padding)

  result = (border_top & "\n" & inside & "\n" & border_bottom)