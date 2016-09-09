.class public interface abstract Lcom/google/android/calendar/event/segment/GenericLinkSegment$GenericLinkProvider;
.super Ljava/lang/Object;
.source "GenericLinkSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/segment/GenericLinkSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GenericLinkProvider"
.end annotation


# virtual methods
.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method
