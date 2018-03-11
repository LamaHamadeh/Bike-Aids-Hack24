

%define the path where our main project is
path_name = '/Users/lamahamadeh/Desktop/Hack24/'; 

%define the parent directory where our images reside
directory = dir([path_name,'/*.jpg']);

%read the first image
Pic1 = imread([path_name,directory(1).name]); 
%visualise the RGB image
figure(1)
subplot(2,2,1)
imagesc(Pic1)
%convert to greyscale
Grey_Pic1 = rgb2gray(Pic1);
%visualise the grey_scale images
figure(1)
hold on
subplot(2,2,2)
imagesc(Grey_Pic1)

%read the second image
Pic2 = imread([path_name,directory(2).name]); 
%visualise the RGB image
figure(1)
hold on
subplot(2,2,3)
imagesc(Pic2)
%convert to greyscale
Grey_Pic2 = rgb2gray(Pic2);
%visualise the grey_scale images
figure(1)
hold on
subplot(2,2,4)
imagesc(Grey_Pic2)

%make both images the same size
Grey_Pic2 = imresize(Grey_Pic2,[size(Grey_Pic1,1) size(Grey_Pic1,2)]);   
%make sure they are both of the same size
size(Grey_Pic2,1)
size(Grey_Pic2,2)
size(Grey_Pic1,1)
size(Grey_Pic1,2)

%checking the pixels of each image, pixel by pixel
for i = 1:size(Grey_Pic1,1)/2%runs over the rows
    for j = 1: size(Grey_Pic1,2)/2 %runs over the columns
        if Grey_Pic1(i,j) == Grey_Pic2(i,j)
           output_image = Grey_Pic1(i,j);
           %dispaly the output image
           figure(2)
           imagesc(output_image)
        end
    end
end

