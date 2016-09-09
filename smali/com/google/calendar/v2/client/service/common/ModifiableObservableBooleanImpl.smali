.class public Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;
.super Lcom/google/calendar/v2/client/service/common/BaseObservable;
.source "ModifiableObservableBooleanImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/calendar/v2/client/service/common/BaseObservable",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;"
    }
.end annotation


# instance fields
.field private value:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/common/BaseObservable;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;->value:Z

    .line 21
    return-void
.end method

.method static from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;->value:Z

    return v0
.end method

.method public set(Z)V
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;->value:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 35
    :goto_0
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;->value:Z

    .line 36
    if-eqz v0, :cond_0

    .line 37
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;->notifyListeners(Ljava/lang/Object;)V

    .line 39
    :cond_0
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;->value:Z

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    return-object v0
.end method
