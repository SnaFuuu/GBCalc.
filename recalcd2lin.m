function [d2lin] = recalcd2lin(port_est,dcomp,dportEst,dagreg,Aslin,Abcomp,bw,dest,C,c)
    cmp1 = [2.0;dcomp/c;0.5*dagreg];
    cmp2 = [2.0;dcomp/c;1.2*dagreg];
    evcomp = max(cmp1);
    ehcomp = max(cmp2);
    if port_est == 1
        dcomp = dportEst;
        nlincomp = 1;
    else
        nbcomp = ceil(Aslin/Abcomp);
        if nbcomp == 1
            nbcomp = 2;
        end
        bdisp = (bw-(2*C/c+2*dest/c+2*dcomp/c));
        if bdisp >= ehcomp
            nbint = fix(bdisp /(dcomp/c+2*ehcomp));
            if nbint+2 > nbcomp
                nbint = nbcomp-2;
            end
            if nbint > 0
                nbpl = 2+nbint;
                nlincomp = ceil(nbcomp/nbpl);
            else
                nbpl = 2+nbint;
                nlincomp = ceil(nbcomp/nbpl);
            end
        else
            msg = 'Parece que a sua seção não comporta o diâmetro das barras comprimidas, pois sua viga é muito esbelta, por favor redefina sua seção e tente novamente.';
            title = 'OPS... DESCULPE';
            errordlg(msg,title);
            return
        end
    end
    if nlincomp > 1
        sum = 0;
        contloc = 0;
        for i = 0:nlincomp-1
            if contloc == nlincomp-1
                rest = nbcomp-contloc*nbpl;
                sum = sum+Abcomp*rest*(dcomp/2+i*(evcomp*c+dcomp));
            else
                calc = Abcomp*nbpl*(dcomp/2+i*(evcomp*c+dcomp));
                sum = sum+calc;
                contloc = contloc+1;
            end
        end
        ybuscomp = (sum/(nbcomp*Abcomp));
        d2lin = ybuscomp+C+dest;
    else
        d2lin = C+dest+dcomp/2;
    end
    
end