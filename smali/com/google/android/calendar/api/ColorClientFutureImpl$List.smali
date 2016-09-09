.class Lcom/google/android/calendar/api/ColorClientFutureImpl$List;
.super Lcom/google/android/calendar/api/FuturePendingResult;
.source "ColorClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/ColorClientFutureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/api/FuturePendingResult",
        "<",
        "Lcom/google/android/calendar/api/ColorClient$ListResult;",
        ">;"
    }
.end annotation


# instance fields
.field final mFilter:Lcom/google/android/calendar/api/ColorFilterOptions;

.field final synthetic this$0:Lcom/google/android/calendar/api/ColorClientFutureImpl;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/ColorClientFutureImpl;Lcom/google/android/calendar/api/ColorFilterOptions;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/calendar/api/ColorClientFutureImpl$List;->this$0:Lcom/google/android/calendar/api/ColorClientFutureImpl;

    invoke-direct {p0}, Lcom/google/android/calendar/api/FuturePendingResult;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/google/android/calendar/api/ColorClientFutureImpl$List;->mFilter:Lcom/google/android/calendar/api/ColorFilterOptions;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/calendar/api/ColorClientFutureImpl$List;->execute()V

    .line 35
    return-void
.end method


# virtual methods
.method protected calculateResult()Lcom/google/android/calendar/api/ColorClient$ListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorClientFutureImpl$List;->this$0:Lcom/google/android/calendar/api/ColorClientFutureImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/ColorClientFutureImpl$List;->mFilter:Lcom/google/android/calendar/api/ColorFilterOptions;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/ColorClientFutureImpl;->synchronousList(Lcom/google/android/calendar/api/ColorFilterOptions;)Lcom/google/android/calendar/api/ColorClient$ListResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic calculateResult()Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/calendar/api/ColorClientFutureImpl$List;->calculateResult()Lcom/google/android/calendar/api/ColorClient$ListResult;

    move-result-object v0

    return-object v0
.end method

.method protected createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/ColorClient$ListResult;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/calendar/api/ColorClientBase$ListResultImpl;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/ColorClientBase$ListResultImpl;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/ColorClientFutureImpl$List;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/ColorClient$ListResult;

    move-result-object v0

    return-object v0
.end method
