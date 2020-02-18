%Chapter 6: Iterating

me=400;
assistant=120;
parasiteme=zeros(1,30);
parasiteassistant=zeros(1,30);
for n=1:30;
    parasiteme(n)=me*((1.1)^n);
    parasiteassistant(n)=assistant*((1.2)^n);
end

plot(1:30, log(parasiteme), 1:30, log(parasiteassistant))
    