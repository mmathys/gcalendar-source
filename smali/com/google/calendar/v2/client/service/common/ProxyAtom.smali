.class public Lcom/google/calendar/v2/client/service/common/ProxyAtom;
.super Ljava/lang/Object;
.source "ProxyAtom.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/ObservableAtom;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final internalListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private underlying:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 16
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ProxyAtom$1;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/common/ProxyAtom$1;-><init>(Lcom/google/calendar/v2/client/service/common/ProxyAtom;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->internalListener:Lcom/google/calendar/v2/client/service/common/Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/common/ProxyAtom;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
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
    .line 36
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 37
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->underlying:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->underlying:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->internalListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 55
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 41
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 42
    return-void
.end method

.method public setUnderlying(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->underlying:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->underlying:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->internalListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->underlying:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 28
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->underlying:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->underlying:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->underlying:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->internalListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 32
    :cond_1
    return-void

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->underlying:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
