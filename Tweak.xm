#import <UIKit/UIKit.h>

%hook ServerAuditorPatchedSwiftClassNameUserAccountConfig
- (bool)isPro {
    return 1;
}
%end

%hook ServerAuditorPatchedSwiftClassNameUserAccountConfig
- (void)setIsPro:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook CLSNetworkClient
- (bool)canUseBackgroundSession {
    return 1;
}
%end

%hook CLSNetworkClient
- (void)setCanUseBackgroundSession:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook ANSUploader
- (bool)supportsBackgroundRequests {
    return 1;
}
%end

%hook ANSUploader
- (bool)shouldUseBackgroundRequests {
    return 1;
}
%end

%hook ANSActivity
+ (bool)supportsBackgroundTasks {
    return 1;
}
%end

%hook CLSCrashReportingController
- (bool)networkClientCanUseBackgroundSessions:(id)arg1 {
    return 1;
}
%end

%hook ANSMetadata
+ (bool)trackingForAdvertisingEnabled {
    return 0;
}
%end

%hook SAAppConfig
- (bool)googleAnalyticsEnabled {
    return 0;
}
%end

%hook SAAppConfig
- (void)setLocationTrackingEnabled:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook SAAppConfig
- (void)setGoogleAnalyticsEnabled:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook ServerAuditorPatchedSwiftClassNameUserAccountConfig
- (bool)isProAndLoggedIn {
    return 1;
}
%end

%ctor {
    %init(ServerAuditorPatchedSwiftClassNameUserAccountConfig = objc_getClass("ServerAuditor.UserAccountConfig"));

}
