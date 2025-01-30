```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   subtype Positive is Integer range 1..Integer'Last;
   MyInt : Positive;
   Index : Positive;
begin
   Put("Enter an index (1-10): ");
   Get(Index);
   if Index in MyArr'Range then
       MyInt := MyArr(Index);
       Put_Line("Value at index " & Index'Image & ": " & MyInt'Image);
   else
       Put_Line("Invalid index. Index must be between 1 and 10");
   end if;
exception
   when others =>
      Put_Line("An unexpected error occurred.");
end Example;
```