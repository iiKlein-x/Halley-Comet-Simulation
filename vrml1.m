myworld = vrworld('VRML1.WRL');
open(myworld);
set(myworld, 'Description', "Halley's Comet 3D Animation");
view(myworld);
% nodes(myworld);
% mynodes = get(myworld, 'Nodes');
% fields(myworld.Sun);
for i=1:length(t)
handles.myworld.S1.translation = [yy(i,1)/50  yy(i,3)/50 0];
i
pause(0.1)
end