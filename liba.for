{\rtf1\ansi\ansicpg1252\cocoartf1038\cocoasubrtf320
{\fonttbl\f0\fmodern\fcharset0 Courier;\f1\fmodern\fcharset0 Courier-Oblique;}
{\colortbl;\red255\green255\blue255;\red165\green158\blue34;\red83\green83\blue83;\red0\green14\blue80;
\red55\green130\blue24;\red67\green130\blue46;\red24\green24\blue24;\red175\green94\blue189;\red231\green38\blue25;
\red124\green44\blue41;}
\paperw11900\paperh16840\margl1440\margr1440\vieww9000\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl300

\f0\fs26 \cf2 program\cf0  average\
 \
  
\f1\i \cf3 ! Read in some numbers and take the average
\f0\i0 \cf0 \
  
\f1\i \cf3 ! As written, if there are no data points, an average of zero is returned
\f0\i0 \cf0 \
  
\f1\i \cf3 ! While this may not be desired behavior, it keeps this example simple
\f0\i0 \cf0 \
 \
  \cf4 implicit\cf0  \cf4 none\cf0 \
 \
  \cf4 real\cf0 , \cf4 dimension\cf5 (\cf6 :\cf5 )\cf0 , \cf4 allocatable\cf0  \cf6 ::\cf0  \cf7 points\cf0 \
  \cf4 integer\cf0                          \cf6 ::\cf0  \cf7 number_of_points\cf0 \
  \cf4 real\cf0                             \cf6 ::\cf0  \cf7 average_points\cf6 =\cf0 0., positive_average\cf6 =\cf0 0., negative_average\cf6 =\cf8 0\cf0 .\
 \
  \cf7 write\cf0  \cf5 (\cf6 *\cf0 ,\cf6 *\cf5 )\cf0  \cf9 "Input number of points to average:"\cf0 \
  read  \cf5 (\cf6 *\cf0 ,\cf6 *\cf5 )\cf0  number_of_points\
 \
  \cf2 allocate\cf0  \cf5 (\cf0 points\cf5 (\cf0 number_of_points\cf5 ))\cf0 \
 \
  write \cf5 (\cf6 *\cf0 ,\cf6 *\cf5 )\cf0  \cf9 "Enter the points to average:"\cf0 \
  read  \cf5 (\cf6 *\cf0 ,\cf6 *\cf5 )\cf0  points\
 \
  
\f1\i \cf3 ! Take the average by summing points and dividing by number_of_points
\f0\i0 \cf0 \
  \cf2 if\cf0  \cf5 (\cf0 number_of_points > \cf8 0\cf5 )\cf0  average_points \cf6 =\cf0  sum\cf5 (\cf0 points\cf5 )\cf0  \cf6 /\cf0  number_of_points\
 \
  
\f1\i \cf3 ! Now form average over positive and negative points only
\f0\i0 \cf0 \
  \cf2 if\cf0  \cf5 (\cf10 count\cf5 (\cf0 points > 0.\cf5 )\cf0  > 0\cf5 )\cf0  \cf2 then\cf0 \
     positive_average \cf6 =\cf0  sum\cf5 (\cf0 points, points > 0.\cf5 )\cf0  \cf6 /\cf0  \cf10 count\cf5 (\cf0 points > 0.\cf5 )\cf0 \
  \cf2 end\cf0  \cf2 if\cf0 \
 \
  \cf2 if\cf0  \cf5 (\cf10 count\cf5 (\cf0 points < 0.\cf5 )\cf0  > 0\cf5 )\cf0  \cf2 then\cf0 \
     negative_average \cf6 =\cf0  sum\cf5 (\cf0 points, points < 0.\cf5 )\cf0  \cf6 /\cf0  \cf10 count\cf5 (\cf0 points < 0.\cf5 )\cf0 \
  \cf2 end\cf0  \cf2 if\cf0 \
 \
  \cf2 deallocate\cf0  \cf5 (\cf0 points\cf5 )\cf0 \
 \
  
\f1\i \cf3 ! Print result to terminal
\f0\i0 \cf0 \
  write \cf5 (\cf6 *\cf0 ,\cf9 '(a,g12.4)'\cf5 )\cf0  \cf9 'Average = '\cf0 , average_points\
  write \cf5 (\cf6 *\cf0 ,\cf9 '(a,g12.4)'\cf5 )\cf0  \cf9 'Average of positive points = '\cf0 , positive_average\
  write \cf5 (\cf6 *\cf0 ,\cf9 '(a,g12.4)'\cf5 )\cf0  \cf9 'Average of negative points = '\cf0 , negative_average\
 \
\cf2 end\cf0  \cf2 program\cf0  average\
}