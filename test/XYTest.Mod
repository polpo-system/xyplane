MODULE XYTest;  (** XYTest.Run: a dot drawn and erased in the plane *)
IMPORT XYplane, out;
VAR fails: LONGINT;
PROCEDURE Check(what: ARRAY OF CHAR; ok: BOOLEAN);
BEGIN IF ~ok THEN INC(fails); out.String("FAIL "); out.String(what); out.Ln END
END Check;
PROCEDURE Run*;
BEGIN
  fails := 0; XYplane.Open; XYplane.Clear;
  Check("clear", ~XYplane.IsDot(5, 7));
  XYplane.Dot(5, 7, XYplane.draw);
  Check("drawn", XYplane.IsDot(5, 7) & ~XYplane.IsDot(6, 7) & ~XYplane.IsDot(5, 8));
  XYplane.Dot(5, 7, XYplane.erase);
  Check("erased", ~XYplane.IsDot(5, 7));
  out.String("XYTest: "); out.Int(fails, 0); out.String(" failed"); out.Ln
END Run;
END XYTest.
