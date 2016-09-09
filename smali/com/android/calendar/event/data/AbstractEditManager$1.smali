.class final Lcom/android/calendar/event/data/AbstractEditManager$1;
.super Ljava/lang/Object;
.source "AbstractEditManager.java"

# interfaces
.implements Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/AbstractEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method
