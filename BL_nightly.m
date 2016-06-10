

function [bl_night]=BL_nightly(xSensor,DOY,TOD)
    % establishes initial baseline based on maximum dT value each
    % night (defined by time before 7:00 AM)
    bl_night=[];
    for d=min(DOY):max(DOY)
        DI=find(DOY==d & TOD<700 & xSensor'>0);
        if length(DI)>0
            [mDI,iDI]=max(xSensor(DI));
            if length(iDI)>=1
                bl_night=[bl_night;DI(iDI(1))];
            end
        end
    end
    bl_night=[1;bl_night;length(xSensor)];
    bl_night=unique(bl_night)';
end

