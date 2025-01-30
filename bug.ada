```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   subtype Positive is Integer range 1..Integer'Last;
   MyInt : Positive;
begin
   MyInt := MyArr(11);
   --This will cause a Constraint_Error exception because the index 11 is out of bounds for MyArr.
exception
   when Constraint_Error =>
      Put_Line("Constraint Error: Index out of bounds");
end Example;
```