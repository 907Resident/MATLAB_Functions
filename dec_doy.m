function [decimal_doy] = dec_doy(datetime)
%DEC_DOY Converts datetime objects to decimal year.
% DECIMAL_YEAR = DEC_DOY(datetime) returns the day of year with time of
% day represented as a decimal
%
% INPUT:
%       datetime - Valid datetime object
%
% Output:
%       decimal_year - Day of the year and the time of day represented to
%       the right of the decimal
%
% Example:
%       >> dt = datetime(2019, 10, 23, 21, 50, 05, 123);
%       >> decimal_doy = dec_doy(dt)
%       decimal_doy =
%                       296.9098
%
% Created by Moyo Ajayi
% Oct 2019
% Vanderbilt University


% Confirm the input is a datetime object
if isdatetime(datetime) ~= 1
    error('Please input a datetime object into the function')
end

% Quantify decimal day of year
decimal_doy =                                                           ...
day(datetime, 'dayofyear') + ((second(datetime, 'secondofday')) ./ 86400);

end
