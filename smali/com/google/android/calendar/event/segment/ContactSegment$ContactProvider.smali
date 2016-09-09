.class public interface abstract Lcom/google/android/calendar/event/segment/ContactSegment$ContactProvider;
.super Ljava/lang/Object;
.source "ContactSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/segment/ContactSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactProvider"
.end annotation


# virtual methods
.method public abstract getAnalyticsAction()Ljava/lang/String;
.end method

.method public abstract getDisplayText()Ljava/lang/String;
.end method

.method public abstract getLink()Ljava/lang/String;
.end method
