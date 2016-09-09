.class public interface abstract Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;
.super Ljava/lang/Object;
.source "BaseChipSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/BaseChipSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseChipSpanCallback"
.end annotation


# virtual methods
.method public abstract invalidateChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
.end method

.method public abstract scheduleChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;Ljava/lang/Runnable;J)V
.end method

.method public abstract unscheduleChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;Ljava/lang/Runnable;)V
.end method
