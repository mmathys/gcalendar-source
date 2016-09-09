.class public interface abstract Lcom/google/android/calendar/event/segment/FoodInfoSegment$FoodInfoProvider;
.super Ljava/lang/Object;
.source "FoodInfoSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/segment/FoodInfoSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FoodInfoProvider"
.end annotation


# virtual methods
.method public abstract getPlaceName()Ljava/lang/String;
.end method

.method public abstract getStartTime()Lcom/google/api/services/calendar/model/Time;
.end method
