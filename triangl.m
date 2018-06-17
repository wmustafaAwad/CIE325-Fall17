function y=triangl(t)
    y = (1-abs(t)) .* (t>=-1) .*(t<1);
end