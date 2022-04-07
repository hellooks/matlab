
function [JPEGRatio] = getJpegRatio(img, Size)
    [height, width, dim] = size(img);
    ib = height*width*dim/8;
    %ib=k.Width*k.Height*k.BitDepth/8;
    %cb=k.FileSize;
    %cr=ib/cb
    JPEGRatio = ib/Size;

end