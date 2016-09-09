.class public Lcom/google/calendar/v2/client/service/common/ObservableAtoms;
.super Ljava/lang/Object;
.source "ObservableAtoms.java"


# static fields
.field static final DUMMY:Lcom/google/calendar/v2/client/service/common/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ObservableAtoms$1;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms$1;-><init>()V

    sput-object v0, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->DUMMY:Lcom/google/calendar/v2/client/service/common/Disposable;

    return-void
.end method

.method public static equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<*>;",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 133
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;

    move-result-object v0

    return-object v0
.end method

.method public static from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 206
    invoke-static {p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBooleanImpl;

    move-result-object v0

    return-object v0
.end method

.method public static from(I)Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;
    .locals 1

    .prologue
    .line 215
    invoke-static {p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;->from(I)Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getValueOrNull(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 273
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
