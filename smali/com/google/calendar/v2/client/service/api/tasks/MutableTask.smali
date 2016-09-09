.class public interface abstract Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;
.super Ljava/lang/Object;
.source "MutableTask.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/tasks/Task;
.implements Lcom/google/calendar/v2/client/service/common/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/api/tasks/Task;",
        "Lcom/google/calendar/v2/client/service/common/Observable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/tasks/Task;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract canChangeTitle()Z
.end method

.method public abstract isNewTask()Z
.end method

.method public abstract isRecurring()Z
.end method

.method public abstract mutableAnnotationHint()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableDueTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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

.method public abstract mutableIsComplete()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method

.method public abstract mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method

.method public abstract mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;
.end method

.method public abstract mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observableAccountKey()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/AccountKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observableForegroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end method
