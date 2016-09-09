.class public interface abstract Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;
.super Ljava/lang/Object;
.source "FindTimeSuggestionUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/FindTimeSuggestionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCancelled()V
.end method

.method public abstract onFiltersOpen(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
.end method

.method public abstract onQuery(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
.end method

.method public abstract onShowMore()V
.end method

.method public abstract onTimeSlotMoreSelected(Lcom/android/calendar/timely/TimelineSuggestion;)V
.end method

.method public abstract onTimeSlotSelected(Lcom/android/calendar/timely/SuggestionRow;)V
.end method
