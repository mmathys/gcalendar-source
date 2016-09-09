.class final Lcom/android/calendar/event/data/AbstractEditManager$2;
.super Ljava/lang/Object;
.source "AbstractEditManager.java"

# interfaces
.implements Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/data/AbstractEditManager;->newMissingDataStatus(Ljava/lang/String;)Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/calendar/event/data/AbstractEditManager$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$2;->val$message:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method
