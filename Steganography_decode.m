%Decoding
binmessagelength=input('Enter the key:');
image2=imread('test.png');
[rows2,cols2,planes2]=size(image2);
hiddenplane=image2(:,:,2);
row2=1;col2=1;
binmsg=zeros(binmessagelength,1);
for i=1:binmessagelength
    if(i>cols2)
        row2=row2+1;
        col2=1;
    end
    pixel=hiddenplane(row2,col2);
    pixelbin=mod(pixel,2);
    binmsg(i)=pixelbin;
    col2=col2+1;
end
totalChars=binmessagelength/7;
message=[];
try
    binmsg=reshape(binmsg,binmessagelength/7,7);
    for i=1:totalChars
        message=char(bin2dec(num2str(binmsg)));
    end
    message=reshape(message,[],totalChars);
    disp(message);
catch EX
    disp('Invalid key.');
end