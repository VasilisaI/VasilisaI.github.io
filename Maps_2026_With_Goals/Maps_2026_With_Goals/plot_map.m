% Draw map from lab map MAT file
% The variable name in the MAT file is 'map' 
figure (1);
hold on
grid on
xlabel('X (m)')
ylabel('Y (m)')
daspect ([1 1 1])

%walls
for j = 1:size(map,1)
    plot([map(j,1),map(j,3)],[map(j,2),map(j,4)],'k','LineWidth',1)
end

if (exist ('waypoints', 'var') )
    for j = 1:size(waypoints,1)
        plot(waypoints(j,1),waypoints(j,2), 'x');    
    end
end   
if (exist ('ECwaypoints', 'var') )
    for j = 1:size(ECwaypoints,1)
        plot(ECwaypoints(j,1),ECwaypoints(j,2), 'o');    
    end
end

if (exist ('beaconLoc', 'var') )
    d=0.15; %shift the number from the beacon position a little
    for j = 1:size(beaconLoc,1)
        plot(beaconLoc(j,2),beaconLoc(j,3), 'square');
        text(beaconLoc(j,2)+d,beaconLoc(j,3)+d,num2str(beaconLoc(j,1)));
    end
end    

% %Circles - x,y,radius
% th = 0:pi/62:2*pi;
% 
% for j = 1:size(map,1)
%     xp = map(j,3) * cos(th) + map(j,1);
%     yp = map(j,3) * sin(th) + map(j,2);
%     plot(xp, yp);
% end

% Goals
plot (goal1(1), goal1(2), 'x','LineWidth',2)
plot (goal2(1), goal2(2), 'x','LineWidth',2)
plot (goal3(1), goal3(2), 'x','LineWidth',2)

