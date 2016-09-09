.class Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$TimelineSuggestionComparator;
.super Ljava/lang/Object;
.source "FindTimeExchangeClient.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimelineSuggestionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/calendar/timely/TimelineSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$1;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$TimelineSuggestionComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/TimelineSuggestion;Lcom/android/calendar/timely/TimelineSuggestion;)I
    .locals 6

    .prologue
    .line 427
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/calendar/timely/TimelineSuggestion;->totalPenalty:D

    iget-wide v4, p2, Lcom/android/calendar/timely/TimelineSuggestion;->totalPenalty:D

    .line 428
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/common/collect/ComparisonChain;->compare(DD)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    iget-wide v4, p2, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    .line 429
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/common/collect/ComparisonChain;->compare(JJ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v0

    .line 427
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 422
    check-cast p1, Lcom/android/calendar/timely/TimelineSuggestion;

    check-cast p2, Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$TimelineSuggestionComparator;->compare(Lcom/android/calendar/timely/TimelineSuggestion;Lcom/android/calendar/timely/TimelineSuggestion;)I

    move-result v0

    return v0
.end method
