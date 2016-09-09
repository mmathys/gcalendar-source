.class public Lcom/android/calendar/time/TimeZoneImpl;
.super Ljava/lang/Object;
.source "TimeZoneImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/time/TimeZone;


# instance fields
.field mTimeZone:Ljava/util/TimeZone;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/time/TimeZoneImpl;->mTimeZone:Ljava/util/TimeZone;

    .line 30
    return-void
.end method

.method public static getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/calendar/time/TimeZoneImpl;

    invoke-direct {v0, p0}, Lcom/android/calendar/time/TimeZoneImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 48
    if-ne p1, p0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    .line 52
    :cond_0
    instance-of v0, p1, Lcom/android/calendar/time/TimeZoneImpl;

    if-eqz v0, :cond_1

    .line 53
    check-cast p1, Lcom/android/calendar/time/TimeZoneImpl;

    .line 54
    invoke-virtual {p0}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/time/TimeZoneImpl;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffset(J)I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/time/TimeZoneImpl;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
