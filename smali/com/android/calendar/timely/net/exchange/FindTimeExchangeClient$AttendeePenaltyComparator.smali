.class Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;
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
    name = "AttendeePenaltyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/android/calendar/timely/FindTimeAttendee;",
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final mOrganizerEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;->mOrganizerEmail:Ljava/lang/String;

    .line 444
    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            "Ljava/lang/Double;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 450
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 451
    iget-object v2, p0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;->mOrganizerEmail:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    const/4 v0, -0x1

    .line 462
    :goto_0
    return v0

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;->mOrganizerEmail:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    const/4 v0, 0x1

    goto :goto_0

    .line 459
    :cond_1
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 460
    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 462
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v6

    .line 463
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/common/collect/ComparisonChain;->compare(DD)Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    .line 464
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 438
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
