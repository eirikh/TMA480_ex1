program matvec

real:: x(3), A(3,3),y(3)
A=reshape((/0.3,0.7,0.5,0.4,0.1,0.5,0.3,0.2,0.0/),shape(A))
x=reshape((/ 0.4,1.0,1.0/),shape(x))
y=reshape((/ 0.0,0.0,0.0/),shape(y))

write(*,*)" A"
do i = 1,3
   write(*,*) (A(i,j), j=1,3)
enddo

write(*,*)"x"
do i = 1,3
   write(*,*) x(i)
enddo
 
do i = 1,3
   y(i)=0
   do j = 1,3
      y(i) = y(i) + A(i,j)*x(j)
   enddo
enddo

write(*,*) "y"

do i = 1,3
   write(*,*) y(i)
enddo

endprogram
