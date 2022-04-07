function [brightness] = getBrightness( im )
    brightness = mean2(im);
end