.class public abstract Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;
.super Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;
.source "SmartMailAddressSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmartMailAddressProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;
.end method

.method public getPlaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
