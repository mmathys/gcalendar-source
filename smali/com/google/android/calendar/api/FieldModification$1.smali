.class final Lcom/google/android/calendar/api/FieldModification$1;
.super Lcom/google/android/calendar/api/FieldModification;
.source "FieldModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/api/FieldModification;->modifyTo(Ljava/lang/Object;)Lcom/google/android/calendar/api/FieldModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/api/FieldModification",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/calendar/api/FieldModification$1;->val$value:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/FieldModification;-><init>(Lcom/google/android/calendar/api/FieldModification$1;)V

    return-void
.end method


# virtual methods
.method public getModificationValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/calendar/api/FieldModification$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public shouldModify()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method
