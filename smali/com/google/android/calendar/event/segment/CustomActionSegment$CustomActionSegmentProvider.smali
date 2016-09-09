.class public interface abstract Lcom/google/android/calendar/event/segment/CustomActionSegment$CustomActionSegmentProvider;
.super Ljava/lang/Object;
.source "CustomActionSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/segment/CustomActionSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomActionSegmentProvider"
.end annotation


# virtual methods
.method public abstract getAction()Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnalyticsAction()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDisplayText()Ljava/lang/String;
.end method

.method public abstract getIconId()I
.end method
