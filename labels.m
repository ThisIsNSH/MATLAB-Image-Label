function a = labels(arr)
  label = 1;
  for row = 1:size(arr)(1)
    for col = 1:size(arr)(2)
      if arr(row,col)==1
        if row==1
          if col==1
            arr(row,col)=label;
            label=label+1;
          elseif arr(row,col-1)==0 
            arr(row,col)=label;
            label=label+1;
          elseif arr(row,col-1)!=0 
            arr(row,col)=arr(row,col-1);
          end
        else
          if col==1
            if arr(row-1,col)==0
              arr(row,col) = label;
              label=label+1;
             else
              arr(row,col) = arr(row-1,col);
             end
          else
            if arr(row,col-1)==0 
              if arr(row-1,col)==0 
                arr(row,col)=label;
                label=label+1;
              else
                arr(row,col)=arr(row-1,col);
              end
            else 
              arr(row,col)=arr(row,col-1);
            end
          end
        end
      endif
    endfor
  endfor
  a = arr;
endfunction
