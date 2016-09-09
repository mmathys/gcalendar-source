.class public Lcom/google/android/calendar/api/deeplinkdata/DeepLinkDataTimelyStoreUtils;
.super Ljava/lang/Object;
.source "DeepLinkDataTimelyStoreUtils.java"


# direct methods
.method public static loadDeepLinkData(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;
    .locals 1

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getDeepLinkData()Lcom/google/api/services/calendar/model/DeepLinkData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkDataTimelyStoreUtils;->translateDeepLinkData(Lcom/google/api/services/calendar/model/DeepLinkData;)Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v0

    goto :goto_0
.end method

.method static translateDeepLinkData(Lcom/google/api/services/calendar/model/DeepLinkData;)Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;
    .locals 5

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DeepLinkData;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DeepLinkData;->getLinks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Link;

    .line 36
    new-instance v1, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    .line 37
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DeepLinkData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Link;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Link;->getDisplayInfo()Lcom/google/api/services/calendar/model/DisplayInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkDataTimelyStoreUtils;->translateDisplayInfoFromModel(Lcom/google/api/services/calendar/model/DisplayInfo;)Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    move-result-object v4

    .line 40
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Link;->getLaunchInfo()Lcom/google/api/services/calendar/model/LaunchInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkDataTimelyStoreUtils;->translateLaunchInfoFromModel(Lcom/google/api/services/calendar/model/LaunchInfo;)Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;)V

    move-object v0, v1

    .line 36
    goto :goto_0
.end method

.method static translateDisplayInfoFromModel(Lcom/google/api/services/calendar/model/DisplayInfo;)Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;
    .locals 6

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    .line 50
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DisplayInfo;->getLinkTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DisplayInfo;->getLinkShortTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DisplayInfo;->getAppIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DisplayInfo;->getAppTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/DisplayInfo;->getAppShortTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static translateLaunchInfoFromModel(Lcom/google/api/services/calendar/model/LaunchInfo;)Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;
    .locals 5

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    .line 64
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/LaunchInfo;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/LaunchInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/LaunchInfo;->getIntentAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/LaunchInfo;->getInstallUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
