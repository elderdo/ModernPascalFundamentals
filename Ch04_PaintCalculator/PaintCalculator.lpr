
{*
  File: PaintCalculator.lpr
  Purpose: This is the main program file for the Paint Calculator application.
  The .lpr extension stands for "Lazarus Project Run" and is used by the Lazarus IDE
  to indicate the entry point of a Pascal console or GUI application. This file contains
  the program's main block, where execution begins, and coordinates the overall logic
  and user interaction for the paint calculation task.
*}
program PaintCalculator;

uses
  SysUtils;

  // Step 1: Define the fixed rules
const
  CoveragePerGallon = 350; { One gallon of paint covers 350 square feet of wall. }

  // Step 2: Declare the temporary storage boxes
var
  WallLength: integer;
  WallWidth: integer;
  TotalArea: integer;
  GallonsNeeded: integer;

begin
  // Step 3: Initialize variables to safe starting states
  WallLength := 0;
  WallWidth := 0;
  TotalArea := 0;
  GallonsNeeded := 0;

  // Step 4: Gather input from the user
  WriteLn('--- Professional Paint Calculator ---');
  WriteLn('Please enter the length of the wall in feet:');
  ReadLn(WallLength);
  WriteLn('Please enter the width of the wall in feet:');
  ReadLn(WallWidth);

  // Step 5: Perform the business logic
  // Calculate area by multiplying length by width
  TotalArea := WallLength * WallWidth;
  // Calculate gallons by dividing the area by the fixed coverage rate
  GallonsNeeded := TotalArea div CoveragePerGallon;

  // Step 6: Output the results to the user
  WriteLn('-------------------------------------');
  WriteLn('Total square footage to paint: ', TotalArea);
  WriteLn('Estimated gallons of paint required: ', GallonsNeeded);
  WriteLn('Press Enter to close the application.');
end.
