clear all
close all
clc

fn='13.tif'; %Nombre del archivo a analizar
I=imread(fn);
nImg=imfinfo(fn);%Obtiene informacion del archivo, en este caso se utiliza para saber cuantas imagenes contiene
[n i]=size(nImg);%Proporciona el numero de imagenes del archivo

matriz=setim(fn,I,n);

Dif_Gene=GenDif(matriz);

Fuji_im=Fujimeth(matriz);

figure
imagesc(Dif_Gene)
colormap jet
title('Diferencias Generalizadas')
colorbar

figure
imagesc(Fuji_im)
colormap jet
title('Fuji')
colorbar