## Copyright (C) 2020 Abdul Ahad
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} cconv_bee (@var{input1}, @var{input2})
##

## Author: Abdul Ahad <Abdul Ahad@AHAD-DESKTOP>
## Created: 2020-12-20

function y = cconv_bee (x, h, N)

x = [x, zeros(1, N - length(x))];
h = [h, zeros(1, N - length(h))];

for n = 1:N
  y(n) = 0;
  for i = 1:N
    j = n - i + 1;
    if (j <= 0)
      j = N + j;
    end
   y(n) = [y(n) + x(i)*h(j)];
  end 
 end 
endfunction
