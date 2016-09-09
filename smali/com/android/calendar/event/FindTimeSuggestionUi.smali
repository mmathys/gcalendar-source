.class public interface abstract Lcom/android/calendar/event/FindTimeSuggestionUi;
.super Ljava/lang/Object;
.source "FindTimeSuggestionUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;
    }
.end annotation


# virtual methods
.method public abstract customizeSystemDecorations()V
.end method

.method public abstract getDurationTimeframe()Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
.end method

.method public abstract getLoadingString()Ljava/lang/String;
.end method

.method public abstract setException(Lcom/android/calendar/timely/FindTimeSuggestionException;)V
.end method

.method public abstract setListener(Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;)V
.end method

.method public abstract setLoading(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
.end method

.method public abstract setNoSuggestion(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSuggestions(Lcom/android/calendar/timely/SuggestionRows;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/SuggestionRows;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract showMore()V
.end method
