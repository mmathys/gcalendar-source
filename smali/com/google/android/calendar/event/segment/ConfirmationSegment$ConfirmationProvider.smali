.class public interface abstract Lcom/google/android/calendar/event/segment/ConfirmationSegment$ConfirmationProvider;
.super Ljava/lang/Object;
.source "ConfirmationSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/segment/ConfirmationSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfirmationProvider"
.end annotation


# virtual methods
.method public abstract getAccountName()Ljava/lang/String;
.end method

.method public abstract getConfirmationNumber()Ljava/lang/String;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method
