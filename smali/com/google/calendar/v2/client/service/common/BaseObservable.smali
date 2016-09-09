.class public abstract Lcom/google/calendar/v2/client/service/common/BaseObservable;
.super Ljava/lang/Object;
.source "BaseObservable.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final changeNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ChangeNotifier",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->newInstance()Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/BaseObservable;->changeNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/BaseObservable;->changeNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 20
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/BaseObservable;->changeNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->dispose()V

    .line 30
    return-void
.end method

.method protected notifyListeners(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/BaseObservable;->changeNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->notifyListeners(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/BaseObservable;->changeNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 25
    return-void
.end method
