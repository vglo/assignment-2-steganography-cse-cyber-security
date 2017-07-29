image=imread('WOWS.jpg');
[rows,cols,planes]=size(image);
message=input('Enter the message to be hidden:','s');
binmessage=dec2bin(message);
binmessagelength=numel(binmessage);
binmessage=reshape(binmessage,binmessagelength,1);
hiddingplane=image(:,:,2);
row=1;col=1;t=1;
for i=1:binmessagelength
    if(i>cols)
        row=row+1;
        col=1;
    end
    pixel=hiddingplane(row,col);
    pixelbin=mod(pixel,2);
    if pixelbin~=bin2dec(binmessage(i))
        hiddingplane(row,col)=pixel-1;
    end
    col=col+1;
end
image(:,:,2)=hiddingplane;
%imshow(image);
imwrite(image,'test.png');
dispmsg=sprintf('The message has been hidden in test.png. Use %d as the key to retrieve the message.',binmessagelength);
disp(dispmsg);


