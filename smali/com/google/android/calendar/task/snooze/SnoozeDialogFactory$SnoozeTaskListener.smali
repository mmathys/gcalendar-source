.class public interface abstract Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;
.super Ljava/lang/Object;
.source "SnoozeDialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SnoozeTaskListener"
.end annotation


# virtual methods
.method public abstract onTaskSnoozeCancelled()V
.end method

.method public abstract onTaskSnoozeStart()V
.end method

.method public abstract onTaskSnoozeSuccess()V
.end method
