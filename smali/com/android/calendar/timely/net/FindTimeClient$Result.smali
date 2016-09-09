.class public final Lcom/android/calendar/timely/net/FindTimeClient$Result;
.super Lcom/android/calendar/timely/net/BaseResult;
.source "FindTimeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/net/FindTimeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/net/BaseResult",
        "<",
        "Lcom/android/calendar/timely/net/FindTimeClient$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public final acceptableSuggestions:I

.field public final consideredAttendees:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final exception:Lcom/android/calendar/timely/FindTimeSuggestionException;

.field public final omittedAttendees:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;"
        }
    .end annotation
.end field

.field public final responseId:Ljava/lang/String;

.field public final suggestions:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/android/calendar/timely/FindTimeSuggestionException;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;",
            "Lcom/android/calendar/timely/FindTimeSuggestionException;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/calendar/timely/net/BaseResult;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/calendar/timely/net/FindTimeClient$Result;->suggestions:Lcom/google/common/collect/ImmutableList;

    .line 94
    iput p5, p0, Lcom/android/calendar/timely/net/FindTimeClient$Result;->acceptableSuggestions:I

    .line 95
    iput-object p2, p0, Lcom/android/calendar/timely/net/FindTimeClient$Result;->exception:Lcom/android/calendar/timely/FindTimeSuggestionException;

    .line 96
    iput-object p3, p0, Lcom/android/calendar/timely/net/FindTimeClient$Result;->consideredAttendees:Lcom/google/common/collect/ImmutableList;

    .line 97
    iput-object p4, p0, Lcom/android/calendar/timely/net/FindTimeClient$Result;->omittedAttendees:Lcom/google/common/collect/ImmutableList;

    .line 98
    iput-object p6, p0, Lcom/android/calendar/timely/net/FindTimeClient$Result;->responseId:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public hasError()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/calendar/timely/net/FindTimeClient$Result;->exception:Lcom/android/calendar/timely/FindTimeSuggestionException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
