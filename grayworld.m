function_out = grayworld(input_image)

result = uint8(zeros(size(I,1), size(I,2), size(I,3)));

 %R,G,B components
 R = input_image(:,:,1);
 G = input_image (:,:,2);
 B = input_image (:,:,3);
 %Inverse of the Avg values
 mR = input_image /(mean(mean(R)));
 mG = input_image /(mean(mean(G)));
 mB = input_image /(mean(mean(B)));

 %Calculate the Smallest Avg Value
 max_RGB = max(max(mR, mG), mB);

 mR = mR/max_RGB;
 mG = mG/max_RGB;
 mB = mB/max_RGB;

 %Calculate the scale values
 result(:,:,1) = R*mR;
 result(:,:,2) = G*mG;
 result(:,:,3) = B*mB;
end 