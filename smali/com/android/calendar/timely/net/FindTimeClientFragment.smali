.class public abstract Lcom/android/calendar/timely/net/FindTimeClientFragment;
.super Lcom/android/calendar/timely/net/BaseClientFragment;
.source "FindTimeClientFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/net/FindTimeClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/net/BaseClientFragment",
        "<",
        "Lcom/android/calendar/timely/net/FindTimeClient$Request;",
        "Lcom/android/calendar/timely/net/FindTimeClient$Result;",
        "Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;",
        "Lcom/android/calendar/timely/FindTimeSuggestionException;",
        ">;",
        "Lcom/android/calendar/timely/net/FindTimeClient;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/calendar/timely/net/BaseClientFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convertResult(Ljava/lang/Object;)Lcom/android/calendar/timely/net/BaseResult;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/net/FindTimeClientFragment;->convertResult(Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;)Lcom/android/calendar/timely/net/FindTimeClient$Result;

    move-result-object v0

    return-object v0
.end method

.method protected convertResult(Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;)Lcom/android/calendar/timely/net/FindTimeClient$Result;
    .locals 7

    .prologue
    .line 67
    new-instance v0, Lcom/android/calendar/timely/net/FindTimeClient$Result;

    iget-object v1, p1, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;->suggestions:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;->consideredAttendees:Lcom/google/common/collect/ImmutableList;

    iget-object v4, p1, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;->omittedAttendees:Lcom/google/common/collect/ImmutableList;

    iget v5, p1, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;->acceptableSuggestions:I

    iget-object v6, p1, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;->responseId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/net/FindTimeClient$Result;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/android/calendar/timely/FindTimeSuggestionException;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ILjava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic getErrorResult(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/android/calendar/timely/net/BaseResult;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/net/FindTimeClientFragment;->getErrorResult(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/android/calendar/timely/net/FindTimeClient$Result;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorResult(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/android/calendar/timely/net/FindTimeClient$Result;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 57
    new-instance v0, Lcom/android/calendar/timely/net/FindTimeClient$Result;

    new-instance v2, Lcom/android/calendar/timely/FindTimeSuggestionException;

    invoke-direct {v2, p1, p2}, Lcom/android/calendar/timely/FindTimeSuggestionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/net/FindTimeClient$Result;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/android/calendar/timely/FindTimeSuggestionException;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ILjava/lang/String;)V

    .line 57
    return-object v0
.end method

.method protected abstract retrieveData(Lcom/android/calendar/timely/net/FindTimeClient$Request;)Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/timely/FindTimeSuggestionException;
        }
    .end annotation
.end method

.method protected bridge synthetic retrieveData(Lcom/android/calendar/timely/net/BaseRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/net/FindTimeClientFragment;->retrieveData(Lcom/android/calendar/timely/net/FindTimeClient$Request;)Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;

    move-result-object v0

    return-object v0
.end method
