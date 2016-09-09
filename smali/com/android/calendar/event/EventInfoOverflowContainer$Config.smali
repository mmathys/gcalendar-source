.class public interface abstract Lcom/android/calendar/event/EventInfoOverflowContainer$Config;
.super Ljava/lang/Object;
.source "EventInfoOverflowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoOverflowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Config"
.end annotation


# virtual methods
.method public abstract getEmailLabelIdFromModel(Lcom/android/calendar/event/CalendarEventModel;)I
.end method

.method public abstract shouldShowDeleteItem(Lcom/android/calendar/event/CalendarEventModel;)Z
.end method

.method public abstract shouldShowEmailGuestsItem(Lcom/android/calendar/event/CalendarEventModel;)Z
.end method

.method public abstract shouldShowForwardItem(Lcom/android/calendar/event/CalendarEventModel;)Z
.end method

.method public abstract shouldShowLoadEventItem(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/Context;)Z
.end method

.method public abstract shouldShowLoadGrooveItem(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/Context;)Z
.end method
