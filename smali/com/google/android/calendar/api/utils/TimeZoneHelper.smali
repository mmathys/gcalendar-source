.class public Lcom/google/android/calendar/api/utils/TimeZoneHelper;
.super Ljava/lang/Object;
.source "TimeZoneHelper.java"


# direct methods
.method public static isValidTimeZoneId(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 16
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isValidTimeZoneIdOrNull(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/calendar/api/utils/TimeZoneHelper;->isValidTimeZoneId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
