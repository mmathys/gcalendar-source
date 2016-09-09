.class Lcom/google/android/calendar/api/FuturePendingResult$2;
.super Ljava/lang/Object;
.source "FuturePendingResult.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/api/FuturePendingResult;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/api/FuturePendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/FuturePendingResult;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/calendar/api/FuturePendingResult$2;->this$0:Lcom/google/android/calendar/api/FuturePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/calendar/api/FuturePendingResult$2;->this$0:Lcom/google/android/calendar/api/FuturePendingResult;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/FuturePendingResult;->calculateResult()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/calendar/api/FuturePendingResult$2;->call()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method
