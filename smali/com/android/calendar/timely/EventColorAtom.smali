.class public Lcom/android/calendar/timely/EventColorAtom;
.super Lcom/google/calendar/v2/client/service/common/BaseObservable;
.source "EventColorAtom.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;
.implements Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/calendar/v2/client/service/common/BaseObservable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/Color;",
        ">;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/Color;",
        ">;",
        "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/Color;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackgroundColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

.field private mEventColor:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private mLabelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/common/BaseObservable;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    iput-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 47
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getEventColor(Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mEventColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 49
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mBackgroundColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 50
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mBackgroundColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 51
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableLabelColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mLabelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mLabelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 53
    return-void
.end method

.method public static fromEvent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Lcom/android/calendar/timely/EventColorAtom;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/calendar/timely/EventColorAtom;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/EventColorAtom;-><init>(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/common/BaseObservable;->dispose()V

    .line 78
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mLabelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 79
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mBackgroundColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 81
    iput-object v1, p0, Lcom/android/calendar/timely/EventColorAtom;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 82
    iput-object v1, p0, Lcom/android/calendar/timely/EventColorAtom;->mEventColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 83
    iput-object v1, p0, Lcom/android/calendar/timely/EventColorAtom;->mLabelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 84
    iput-object v1, p0, Lcom/android/calendar/timely/EventColorAtom;->mBackgroundColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 85
    return-void
.end method

.method public get()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "EventColorAtom is disposed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mEventColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventColorAtom;->get()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getEventColor(Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/calendar/timely/EventColorAtom;->mEventColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iput-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mEventColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 92
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mEventColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/EventColorAtom;->notifyListeners(Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/EventColorAtom;->onChange(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    return-void
.end method

.method public set(Lcom/google/calendar/v2/client/service/api/common/Color;)Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "EventColorAtom is disposed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/android/calendar/timely/EventColorAtom;->mLabelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/EventColorAtom;->set(Lcom/google/calendar/v2/client/service/api/common/Color;)Z

    move-result v0

    return v0
.end method
