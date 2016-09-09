.class public interface abstract Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;
.super Ljava/lang/Object;
.source "DetailsLinkSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/segment/DetailsLinkSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DetailsLinkProvider"
.end annotation


# virtual methods
.method public abstract getEnabled()Z
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
