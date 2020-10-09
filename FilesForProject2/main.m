function [] = main()
load 'Subject4-Session3-Take4_mocapJoints.mat' mocapJoints
load 'vue2CalibInfo.mat' vue2
load 'vue4CalibInfo.mat' vue4

%     x = mocapJoints(mocapFnum,:,1); %array of 12 X coordinates
%     y = mocapJoints(mocapFnum,:,2); % Y coordinates
%     z = mocapJoints(mocapFnum,:,3); % Z coordinates
%input and parsing of mocap dataset
for mocapFnum = 1:size(mocapJoints, 1)
    conf = mocapJoints(mocapFnum,:,4); %confidence values
    sum = sum(conf); %sum should equal 12
    if sum ~= 12
        % ignore frame because not all confidence values are 1
    end
end
%input and parsing of camera parameters

end %main