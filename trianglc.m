function y=trianglc(t)
    y = (1-2.*abs(t)) .* (t>=-0.5) .*(t<0.5);
end