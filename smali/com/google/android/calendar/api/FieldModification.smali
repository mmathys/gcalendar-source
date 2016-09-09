.class public Lcom/google/android/calendar/api/FieldModification;
.super Ljava/lang/Object;
.source "FieldModification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/api/FieldModification$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/calendar/api/FieldModification;-><init>()V

    return-void
.end method

.method public static doNotModify()Lcom/google/android/calendar/api/FieldModification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/calendar/api/FieldModification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/calendar/api/FieldModification;

    invoke-direct {v0}, Lcom/google/android/calendar/api/FieldModification;-><init>()V

    return-object v0
.end method

.method public static modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/calendar/api/FieldModification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/calendar/api/FieldModification$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/api/FieldModification$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getModificationValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getModificationValue() when shouldModify() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldModify()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
