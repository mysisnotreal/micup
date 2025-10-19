-- made by mys (obfuscated by moonveil yes ik i removed the moonveil tag)

local H=bit32.bxor
local ca,X,fa_,I,Da,V,r_;
I={};
fa_,ca={},function(ea,xa,k)
    fa_[k]=H(xa,56705)-H(ea,65481)
    return fa_[k]
end;
Da=fa_[-7474]or ca(15018,90712,-7474)
repeat
    if Da>37482 then
        V=(select);
        Da=fa_[6539]or ca(39666,2946,6539)
    elseif Da<=28872 then
        r_=(function(...)
            return{[1]={...},[2]=V('#',...)}
        end);
        Da=fa_[-15052]or ca(59635,29733,-15052)
    else
        X=((function()
            local function Z(A,ba,y)
                if ba>y then
                    return
                end
                return A[ba],Z(A,ba+1,y)
            end
            return Z
        end)());
        Da=fa_[-9023]or ca(32178,110503,-9023)
        continue
    end
until Da==61355
local N,f_=game.Players.LocalPlayer,{ToolName='jerk  mys.client',AnimationId='rbxassetid://698251653',Speed=1,StartTime=0.59999999999999998};
table.freeze(f_)
local O=true
local a_
local Ca
local pa,ka=false,{}
function ka:Create()
    if a_ then
        return
    end
    print'R15 jerk made by mys';
    a_=Instance.new'Tool';
    a_.Name=f_.ToolName
    local Y=Instance.new('Part',a_);
    Y.Name='Handle';
    Y.Size=Vector3 .new(1,1,1);
    Y.CanCollide=false;
    Y.Transparency=1
    local o_=Instance.new('Animation',a_);
    o_.AnimationId=f_.AnimationId
    local function wa()
        local C,Q,l_,v;
        C={};
        v,Q={},function(w_,ha,G)
            v[G]=H(ha,17341)-H(w_,39298)
            return v[G]
        end;
        l_=v[9756]or Q(57703,68283,9756)
        repeat
            if l_>=26544 then
                if l_>39457 then
                    if l_<53281 then
                        if l_<46414 then
                            if l_<=41889 then
                                pa=true;
                                l_=v[13746]or Q(28012,67412,13746)
                            else
                                C[1]='Animator';
                                l_=51146
                            end
                        elseif l_<=51146 then
                            if l_>46414 then
                                C[2]=C[2](C[1],C[3]);
                                l_=12413
                            else
                                C[4]=C[4](function()
                                    local i_,ma,sa,T;
                                    i_={};
                                    sa,T={},function(z,h,L)
                                        sa[z]=H(h,49897)-H(L,324)
                                        return sa[z]
                                    end;
                                    ma=sa[12084]or T(12084,4174,1177)
                                    repeat
                                        if ma<=32552 then
                                            if ma>=21665 then
                                                if ma<=28946 then
                                                    if ma<=28894 then
                                                        if ma>=27845 then
                                                            if ma<=27845 then
                                                                Ca.TimePosition=i_[1];
                                                                ma=14090
                                                            else
                                                                if not pa or not Ca then
                                                                    ma=sa[-3674]or T(-3674,116148,27854)
                                                                    continue
                                                                end
                                                                ma=sa[-8855]or T(-8855,2039,1232)
                                                            end
                                                        else
                                                            i_[1]=f_.StartTime;
                                                            ma=sa[14999]or T(14999,26327,13885)
                                                        end
                                                    else
                                                        ma=sa[-3047]or T(-3047,5459,20148)
                                                        continue
                                                    end
                                                elseif ma>31761 then
                                                    i_[2]=i_[3](i_[1]);
                                                    ma=sa[24359]or T(24359,122557,20174)
                                                else
                                                    i_[3]=0.10000000000000001;
                                                    ma=sa[-16017]or T(-16017,129201,17520)
                                                end
                                            elseif ma<=20539 then
                                                if ma<14090 then
                                                    if ma<=2874 then
                                                        if pa and Ca and typeof(Ca.TimePosition)=='number'and Ca.TimePosition<f_.StartTime then
                                                            ma=sa[27863]or T(27863,101197,23233)
                                                        else
                                                            ma=55661
                                                        end
                                                    else
                                                        i_[1]=i_[1]();
                                                        ma=sa[-14123]or T(-14123,100499,55512)
                                                    end
                                                elseif ma<=14090 then
                                                    i_[1]=task.wait;
                                                    ma=sa[-605]or T(-605,104772,26548)
                                                else
                                                    i_[2]=i_[3](i_[1]);
                                                    ma=sa[14884]or T(14884,14281,41275)
                                                end
                                            elseif ma<=21305 then
                                                i_[1]=Ca;
                                                ma=48341
                                            else
                                                i_[1]=i_[1](i_[3]);
                                                ma=sa[-29122]or T(-29122,26725,40470)
                                            end
                                        elseif ma>=55661 then
                                            if ma>=61762 then
                                                if ma<62653 then
                                                    i_[1]=task.wait;
                                                    ma=sa[8194]or T(8194,11035,56144)
                                                elseif ma<=62653 then
                                                    i_[3]=0.10000000000000001;
                                                    ma=21349
                                                else
                                                    i_[1]=i_[1](i_[3]);
                                                    ma=sa[3340]or T(3340,64206,11689)
                                                end
                                            elseif ma>55661 then
                                                i_[1]=task.wait;
                                                ma=sa[12341]or T(12341,104660,57192)
                                            else
                                                if Ca then
                                                    ma=sa[-2199]or T(-2199,24168,18444)
                                                    continue
                                                end
                                                ma=sa[-26214]or T(-26214,93554,58261)
                                            end
                                        elseif ma>=48341 then
                                            if ma<=49034 then
                                                if ma>48341 then
                                                    i_[1]=Ca;
                                                    ma=sa[-30129]or T(-30129,25903,1516)
                                                else
                                                    i_[3]=i_[1].Stop;
                                                    ma=32552
                                                end
                                            else
                                                if pa then
                                                    ma=sa[21349]or T(21349,123413,12030)
                                                else
                                                    ma=sa[-10437]or T(-10437,20030,6785)
                                                end
                                            end
                                        elseif ma>39379 then
                                            i_[3]=i_[1].Play;
                                            ma=sa[5559]or T(5559,99815,63383)
                                        else
                                            return
                                        end
                                    until ma==34762
                                end);
                                l_=v[-110]or Q(9257,47401,-110)
                            end
                        else
                            C[5]=C[1];
                            l_=33284
                        end
                    elseif l_>57267 then
                        if l_>57736 then
                            C[6]=C[7](C[4],C[6]);
                            l_=v[-14309]or Q(42382,38708,-14309)
                        else
                            Ca.TimePosition=C[4];
                            l_=v[14411]or Q(27245,46844,14411)
                        end
                    elseif l_>57018 then
                        if C[5]then
                            l_=v[-12532]or Q(18551,69700,-12532)
                            continue
                        end
                        l_=v[15337]or Q(4395,74974,15337)
                    elseif l_>53281 then
                        C[2]=Instance.new;
                        l_=42883
                    else
                        C[4]=N.Character;
                        l_=v[-31150]or Q(27712,46429,-31150)
                    end
                elseif l_<33872 then
                    if l_<32749 then
                        if l_>27060 then
                            C[6]='Animator';
                            l_=v[-7864]or Q(26719,81123,-7864)
                        elseif l_>26544 then
                            Ca=X(C[6][1],1,C[6][2]);
                            l_=v[11749]or Q(16730,81860,11749)
                        else
                            C[6]=C[7](C[4]);
                            l_=v[-10488]or Q(11802,96341,-10488)
                        end
                    elseif l_>=33185 then
                        if l_<=33185 then
                            return
                        else
                            C[4]=C[5];
                            l_=v[-26092]or Q(21750,91324,-26092)
                        end
                    else
                        C[6]=r_(C[7](C[4],C[6]));
                        l_=v[936]or Q(5931,58049,936)
                    end
                elseif l_<=38410 then
                    if l_>=37505 then
                        if l_<=37505 then
                            if pa then
                                l_=v[-4003]or Q(5722,60628,-4003)
                                continue
                            end
                            l_=v[11743]or Q(54845,60228,11743)
                        else
                            C[6]=r_(C[7](C[4],o_));
                            l_=v[29479]or Q(41697,59050,29479)
                        end
                    elseif l_>33872 then
                        C[6]=C[7](C[4],C[6]);
                        l_=39457
                    else
                        C[4]=Ca;
                        l_=v[-24165]or Q(24250,89977,-24165)
                    end
                elseif l_>39037 then
                    C[5]=C[6];
                    l_=v[-21258]or Q(20466,128414,-21258)
                else
                    C[4]=f_.StartTime;
                    l_=v[24217]or Q(60302,69673,24217)
                end
            elseif l_>12819 then
                if l_>21900 then
                    if l_>22925 then
                        C[7]=C[4].FindFirstChildOfClass;
                        l_=31893
                    elseif l_>=22842 then
                        if l_>22842 then
                            C[8]=C[4];
                            l_=16125
                        else
                            C[4]=C[3];
                            l_=v[-1470]or Q(3478,47748,-1470)
                        end
                    else
                        return
                    end
                elseif l_>=20475 then
                    if l_>=21688 then
                        if l_<=21688 then
                            C[7]=C[4].LoadAnimation;
                            l_=v[12378]or Q(35971,59574,12378)
                        else
                            C[7]=C[4].AdjustSpeed;
                            l_=14961
                        end
                    else
                        C[4]=Ca;
                        l_=v[14305]or Q(39966,24827,14305)
                    end
                elseif l_<=15593 then
                    if l_<=14961 then
                        C[6]=f_.Speed;
                        l_=64690
                    else
                        l_=v[-18784]or Q(16689,121641,-18784)
                        continue
                    end
                else
                    C[4]=C[8];
                    l_=21688
                end
            elseif l_>8081 then
                if l_>=11570 then
                    if l_<=12413 then
                        if l_>11570 then
                            C[1]=C[2];
                            l_=52290
                        else
                            C[7]=C[4].FindFirstChildWhichIsA;
                            l_=11469
                        end
                    else
                        C[4]=warn(C[4]);
                        l_=v[2072]or Q(256,88478,2072)
                    end
                elseif l_>8565 then
                    C[6]='Humanoid';
                    l_=v[-30411]or Q(48983,58751,-30411)
                else
                    C[4]=C[9];
                    l_=11570
                end
            elseif l_>=4819 then
                if l_>7594 then
                    C[4]='Jerk animation is already playing.';
                    l_=12819
                elseif l_>4819 then
                    C[7]=C[4].Play;
                    l_=v[-17168]or Q(36161,16334,-17168)
                else
                    C[3]=X(C[6][1],1,C[6][2])
                    if not C[3]then
                        l_=v[-16401]or Q(18262,41038,-16401)
                        continue
                    end
                    l_=37505
                end
            elseif l_<338 then
                C[9]=C[4]
                if not C[9]then
                    l_=v[-3256]or Q(1426,45475,-3256)
                    continue
                end
                l_=v[15709]or Q(59398,53572,15709)
            elseif l_<=338 then
                C[4]=task.spawn;
                l_=46414
            else
                return
            end
        until l_==49121
    end
    local b_,q,aa,la;
    b_={};
    la,q={},function(x,F,p)
        la[F]=H(x,48837)-H(p,27409)
        return la[F]
    end;
    aa=la[28808]or q(94808,28808,39370)
    while aa~=38774 do
        if aa<=49157 then
            if aa<=37175 then
                if aa<32464 then
                    b_[1]=b_[2](b_[3],b_[4]);
                    aa=la[27279]or q(79612,27279,62511)
                elseif aa<=32464 then
                    b_[3]=a_.Unequipped;
                    aa=la[-20272]or q(102058,-20272,2232)
                else
                    b_[3]=a_.Equipped;
                    aa=56101
                end
            elseif aa<=44940 then
                b_[1]=b_[2](b_[3],wa);
                aa=la[4128]or q(12743,4128,31523)
            else
                a_.Parent=b_[3];
                aa=la[16677]or q(8226,16677,27744)
                continue
            end
        elseif aa<56101 then
            if aa<=52422 then
                b_[2]=b_[3].Connect;
                aa=la[-8019]or q(375,-8019,11623)
            else
                b_[4]=function()
                    local ya,ua,P,B;
                    P={};
                    ya,B={},function(S,n_,u_)
                        ya[u_]=H(S,12419)-H(n_,20579)
                        return ya[u_]
                    end;
                    ua=ya[-13939]or B(18168,16080,-13939)
                    while ua~=24545 do
                        if ua<32983 then
                            if ua>=14601 then
                                if ua<=14601 then
                                    P[1]=P[2](P[3]);
                                    ua=ya[-24207]or B(51728,30870,-24207)
                                else
                                    P[2]=P[3].Stop;
                                    ua=ya[30580]or B(43979,12892,30580)
                                end
                            elseif ua<=453 then
                                pa=false;
                                ua=ya[-30055]or B(65530,16379,-30055)
                                continue
                            else
                                if Ca then
                                    ua=ya[-12088]or B(59546,23894,-12088)
                                    continue
                                end
                                ua=ya[4684]or B(13237,20754,4684)
                            end
                        elseif ua<51940 then
                            if ua<=32983 then
                                P[1]=P[2](P[3]);
                                ua=ya[-19143]or B(103069,42033,-19143)
                            else
                                Ca=nil;
                                ua=ya[-13347]or B(55737,46870,-13347)
                            end
                        elseif ua>53662 then
                            P[2]=P[3].Destroy;
                            ua=32983
                        elseif ua<=51940 then
                            P[3]=Ca;
                            ua=27066
                        else
                            P[3]=Ca;
                            ua=59661
                        end
                    end
                end;
                aa=la[31179]or q(120501,31179,48168)
            end
        elseif aa>56101 then
            b_[3]=N.Backpack;
            aa=la[-5173]or q(118589,-5173,56034)
        else
            b_[2]=b_[3].Connect;
            aa=44940
        end
    end
end
function ka:Remove()
    local ra,za,E,g;
    g={};
    E,ra={},function(j,c,oa)
        E[c]=H(oa,64731)-H(j,51930)
        return E[c]
    end;
    za=E[19409]or ra(12150,19409,104013)
    while za~=42095 do
        if za<=29742 then
            if za<=29407 then
                if za>=24978 then
                    if za<=24978 then
                        a_=nil;
                        za=E[18071]or ra(40471,18071,1671)
                    else
                        g[1]=g[2].Destroy;
                        za=E[-15116]or ra(44424,-15116,10075)
                    end
                else
                    g[2]=a_;
                    za=29407
                end
            else
                g[3]=g[1](g[2]);
                za=E[9296]or ra(65218,9296,26993)
            end
        elseif za>34026 then
            za=E[-28064]or ra(64760,-28064,9802)
            continue
        else
            if a_ then
                za=E[-28059]or ra(44727,-28059,26863)
                continue
            end
            za=42383
        end
    end
end
local d_,Ba,R,m;
d_={};
R,Ba={},function(e_,ga,Aa)
    R[ga]=H(e_,17729)-H(Aa,34428)
    return R[ga]
end;
m=R[-12713]or Ba(94720,-12713,58128)
while m~=486 do
    if m<=26909 then
        if m<17738 then
            if m>=11073 then
                if m<=11073 then
                    if N.Character and O then
                        m=R[-3323]or Ba(91352,-3323,9959)
                        continue
                    end
                    m=19410
                else
                    d_[1]=N.CharacterAdded;
                    m=6239
                end
            else
                d_[2]=d_[1].Connect;
                m=R[4220]or Ba(95073,4220,65129)
            end
        elseif m>21320 then
            d_[1]=ka;
            m=17738
        elseif m<19410 then
            d_[2]=d_[1].Create;
            m=R[1385]or Ba(126588,1385,21272)
        elseif m>19410 then
            d_[2]=d_[1].WaitForChild;
            m=44116
        else
            m=R[26147]or Ba(48902,26147,32285)
            continue
        end
    elseif m>=48651 then
        if m>53717 then
            d_[3]=d_[2](d_[1]);
            m=R[27134]or Ba(51873,27134,49778)
        elseif m<=48651 then
            d_[3]=d_[2](d_[1],function(D)
                local qa,ia,ja,J;
                ja={};
                ia,J={},function(ta,U,t_)
                    ia[t_]=H(U,45825)-H(ta,57569)
                    return ia[t_]
                end;
                qa=ia[27084]or J(2253,105013,27084)
                repeat
                    if qa>36704 then
                        if qa>46503 then
                            if qa>50559 then
                                ja[1]=ja[2].Create;
                                qa=36704
                            else
                                ja[1]=ja[2].WaitForChild;
                                qa=ia[25773]or J(15678,126711,25773)
                            end
                        elseif qa>39307 then
                            ja[1]=0.10000000000000001;
                            qa=ia[27904]or J(56425,968,27904)
                        elseif qa>38475 then
                            ja[2]=D;
                            qa=50559
                        else
                            ja[2]=task.wait;
                            qa=46503
                        end
                    elseif qa>=19621 then
                        if qa>32791 then
                            ja[3]=ja[1](ja[2]);
                            qa=ia[-19414]or J(25739,564,-19414)
                        elseif qa<29761 then
                            ja[2]=ka;
                            qa=57808
                        elseif qa<=29761 then
                            ja[2]=ja[2](ja[1]);
                            qa=ia[13456]or J(12122,110433,13456)
                        else
                            ja[3]='Humanoid';
                            qa=18322
                        end
                    elseif qa<16648 then
                        qa=ia[-20643]or J(20557,18359,-20643)
                        continue
                    elseif qa<=16648 then
                        if O then
                            qa=ia[3539]or J(20597,129310,3539)
                            continue
                        end
                        qa=11467
                    else
                        ja[3]=ja[1](ja[2],ja[3]);
                        qa=ia[-21200]or J(14632,115477,-21200)
                    end
                until qa==17418
            end);
            m=R[-23624]or Ba(29683,-23624,36109)
        else
            d_[4]=function(W)
                local da,na,K,s_;
                K={};
                s_,da={},function(_a,va,M)
                    s_[_a]=H(va,705)-H(M,18581)
                    return s_[_a]
                end;
                na=s_[-20262]or da(-20262,73010,39778)
                repeat
                    if na>30042 then
                        if na>45085 then
                            K[1]=ka;
                            na=s_[11566]or da(11566,16110,21050)
                        elseif na<=31892 then
                            K[2]=K[1].Remove;
                            na=s_[10404]or da(10404,55217,28102)
                        else
                            K[3]=K[2](K[1]);
                            na=s_[13166]or da(13166,9909,22498)
                        end
                    elseif na<19452 then
                        if na>1277 then
                            K[2]=K[1].Create;
                            na=s_[-23398]or da(-23398,58310,9016)
                        else
                            na=s_[-5718]or da(-5718,121057,42695)
                            continue
                        end
                    elseif na<=23240 then
                        if na>19452 then
                            K[1]=ka;
                            na=s_[11764]or da(11764,45218,32090)
                        else
                            O=W
                            if W then
                                na=s_[-13127]or da(-13127,87397,12406)
                                continue
                            else
                                na=s_[-4562]or da(-4562,35213,30737)
                                continue
                            end
                            na=1277
                        end
                    else
                        K[3]=K[2](K[1]);
                        na=s_[30242]or da(30242,54341,39186)
                    end
                until na==60366
            end;
            m=11368
        end
    elseif m>=44116 then
        if m>44116 then
            d_[3]=d_[2](d_[1],d_[3]);
            m=R[-11770]or Ba(44758,-11770,1030)
        else
            d_[3]='Humanoid';
            m=R[10453]or Ba(74850,10453,8968)
        end
    else
        d_[1]=N.Character;
        m=R[7860]or Ba(88770,7860,19015)
    end
end
