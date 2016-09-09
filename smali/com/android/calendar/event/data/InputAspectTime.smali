.class public interface abstract Lcom/android/calendar/event/data/InputAspectTime;
.super Ljava/lang/Object;
.source "InputAspectTime.java"


# virtual methods
.method public abstract canChangeTime()Z
.end method

.method public abstract handleMoreOptionsButtonClicked()V
.end method

.method public abstract isSavedAsAllDay()Z
.end method

.method public abstract isTask()Z
.end method

.method public abstract mutableDefaultDuration()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;
.end method

.method public abstract mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method

.method public abstract mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showMoreOptionsButton()Z
.end method

.method public abstract useDefaultDuration()Z
.end method
