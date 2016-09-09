.class public Lcom/google/android/calendar/CalendarApiConstants$ConferenceType;
.super Ljava/lang/Object;
.source "CalendarApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/CalendarApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConferenceType"
.end annotation


# direct methods
.method public static isTypeSupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 40
    const-string v0, "eventHangout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eventNamedHangout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meeting"

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meetingPhoneNumber"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
