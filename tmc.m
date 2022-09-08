function result1=tmc(Target_image,Template_image)

if size(Target_image,3)==3
    Target_image=rgb2gray(Target_image);
end
if size(Template_image,3)==3
    Template_image=rgb2gray(Template_image);
end

[r1,c1]=size(Target_image);
[r2,c2]=size(Template_image);

% calculate the mean of the template
image22=mean(Template_image);

% cross-correlate target and template images
corrMat=[];
for i=1:(r1-r2+1)
     for j=1:(c1-c2+1)
         N_image=Target_image(i:i+r2-1,j:j+c2-1);
         N_image=N_image-mean(mean(N_image));
         corr=sum(sum(N_image .* image22));
         corrMat(i,j)=corr;
     end
end

result1=plotbox(Target_image,Template_image,corrMat); 