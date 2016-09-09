.class public Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;
.super Lcom/google/calendar/v2/client/service/common/BaseObservable;
.source "ModifiableObservableAtomImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/calendar/v2/client/service/common/BaseObservable",
        "<TT;>;",
        "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/common/BaseObservable;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->value:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method static from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/common/BaseObservable;->dispose()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->value:Ljava/lang/Object;

    .line 74
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
    .line 60
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 51
    :goto_0
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->value:Ljava/lang/Object;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->notifyListeners(Ljava/lang/Object;)V

    .line 55
    :cond_0
    return v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "value"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->value:Ljava/lang/Object;

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method
