.class public Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;
.super Lcom/google/calendar/v2/client/service/common/BaseObservable;
.source "ModifiableObservableIntegerImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/calendar/v2/client/service/common/BaseObservable",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;"
    }
.end annotation


# instance fields
.field private value:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/common/BaseObservable;-><init>()V

    .line 20
    iput p1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;->value:I

    .line 21
    return-void
.end method

.method public static from(I)Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;->value:I

    return v0
.end method

.method public set(I)V
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;->value:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 35
    :goto_0
    iput p1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;->value:I

    .line 36
    if-eqz v0, :cond_0

    .line 37
    iget v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;->notifyListeners(Ljava/lang/Object;)V

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

    iget v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;->value:I

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    return-object v0
.end method
