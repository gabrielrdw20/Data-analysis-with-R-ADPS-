# github: gabrielrdw20

library('roperators')
library('dplyr')

K <- 20000
r <- 0.25
n <- 360

x <- "Wysoko�� cz�ci kapita�owej raty: "
R0 <- K/n
R0F <- round(R0, digits = 2)

i <- readline(prompt='Podaj numer i-tej raty: ') # --- PODAJ WARTO�C I ZANIM PRZEJDZIESZ DALEJ -----------------------
a <- i
x1 <- paste('Wysoko�� cz�ci odsetkowej raty', a, ': ')
i <- as.numeric(as.character(i))
Ri <- ((K- (i-1) * R0)*r)/12
RiF <- round(Ri, digits = 2)

y <- paste('Wysoko�� raty ', a)
R <- Ri + R0
RF <- round(R, digits = 2)

z <- 'Ca�kowita kwota do sp�aty: '
start = 0;
for (s in 1:n) 
{
  
  start <-start+(
    (Ri <- ((K- (s-1) * R0)*r)/12) + R0)
}
Rx <- start
RxF <- round(Rx, digits = 2)



# Wyniki -----------------------
print(paste0(x,R0F,' z�')) # 1
print(paste0(x1,RiF,' z�')) # 2
print(paste0(y,RF,' z�')) # 3
print(paste0(z,RxF,' z�')) # 4



