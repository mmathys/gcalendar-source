.class public interface abstract Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;
.super Ljava/lang/Object;
.source "SyncProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/SyncProgressTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncProgressCallback"
.end annotation


# virtual methods
.method public abstract onSyncCompleted(Z)V
.end method

.method public abstract onSyncPending()V
.end method
