.class public Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;
.super Ljava/lang/Object;
.source "MutableTaskImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;


# instance fields
.field private final accountKey:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/AccountKey;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final dueTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private final foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final isComplete:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private final isDueAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private key:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

.field private final listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ProxyListener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/tasks/Task;",
            ">;"
        }
    .end annotation
.end field

.field private listenersRegistered:Z

.field private final notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ChangeNotifier",
            "<",
            "Lcom/google/calendar/v2/client/service/api/tasks/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

.field private final title:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;Lcom/google/calendar/v2/client/service/api/common/Color;Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->newInstance()Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    .line 49
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-static {v0, p0}, Lcom/google/calendar/v2/client/service/common/ProxyListener;->newInstance(Lcom/google/calendar/v2/client/service/common/ChangeNotifier;Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ProxyListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    .line 51
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->key:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    .line 52
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 53
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 54
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->accountKey:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 55
    invoke-static {v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->title:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 56
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isComplete:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 57
    invoke-static {v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->dueTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 58
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isDueAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 59
    invoke-static {v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->annotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 60
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;

    invoke-direct {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;-><init>(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    .line 61
    return-void
.end method

.method private ensureListenersRegistered()V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->listenersRegistered:Z

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->listenersRegistered:Z

    .line 73
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->title:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 74
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isComplete:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 75
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->dueTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 76
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isDueAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 77
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->annotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 78
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/api/tasks/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->ensureListenersRegistered()V

    .line 84
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 85
    return-void
.end method

.method public canChangeTitle()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public changeAccountInternal(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Lcom/google/calendar/v2/client/service/api/common/Color;Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isNewTask()Z

    move-result v0

    const-string v1, "Can only change the account before saving"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 257
    const-string v0, "~"

    invoke-static {p1, v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->from(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->key:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    .line 258
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->accountKey:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 259
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 260
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->title:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 187
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isComplete:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->dispose()V

    .line 188
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->dueTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 189
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isDueAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->dispose()V

    .line 190
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->annotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 191
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->dispose()V

    .line 192
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/ProxyListener;->dispose()V

    .line 193
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 194
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 195
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->accountKey:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 196
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    if-ne p0, p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;

    if-nez v2, :cond_2

    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;

    .line 162
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->key:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->key:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->title:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->title:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 163
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->dueTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->dueTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 164
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isDueAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 165
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isDueAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isComplete:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 166
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isComplete:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->annotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->annotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 167
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    .line 168
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->dueTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method public getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->observableForegroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    goto :goto_0
.end method

.method public getTaskKey()Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->key:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->title:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasSmartMail()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->key:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isComplete:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isDueAllDay()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isDueAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isNewTask()Z
    .locals 2

    .prologue
    .line 230
    const-string v0, "~"

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->key:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRecurring()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutableAnnotationHint()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->annotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableDueTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->dueTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableIsComplete()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isComplete:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isDueAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    return-object v0
.end method

.method public mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->title:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public observableAccountKey()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/AccountKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->accountKey:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public observableForegroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/api/tasks/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Key"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->key:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Title"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->title:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 175
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Due time"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->dueTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 176
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Due all day"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isDueAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 177
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Complete"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->isComplete:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 178
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Annotation"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->annotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Recurrence"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    return-object v0
.end method
