.class public final Lcom/android/calendar/timely/net/FindTimeClient$Request;
.super Lcom/android/calendar/timely/net/BaseRequest;
.source "FindTimeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/net/FindTimeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/net/BaseRequest",
        "<",
        "Lcom/android/calendar/timely/net/FindTimeClient$Request;",
        "Lcom/android/calendar/timely/net/FindTimeClient$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public final attendees:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation
.end field

.field public final calendarEventReference:Ljava/lang/String;

.field public final considerExistingRooms:Z

.field public final timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

.field public final timezone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/calendar/timely/FindTimeTimeframe;Ljava/util/TimeZone;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;",
            "Lcom/android/calendar/timely/FindTimeTimeframe;",
            "Ljava/util/TimeZone;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/calendar/timely/net/BaseRequest;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->attendees:Lcom/google/common/collect/ImmutableList;

    .line 49
    iput-object p2, p0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    .line 50
    iput-object p3, p0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timezone:Ljava/util/TimeZone;

    .line 51
    iput-boolean p4, p0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->considerExistingRooms:Z

    .line 52
    iput-object p5, p0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->calendarEventReference:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    check-cast p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;

    .line 63
    iget-object v1, p0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    iget-object v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->attendees:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->attendees:Lcom/google/common/collect/ImmutableList;

    .line 64
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timezone:Ljava/util/TimeZone;

    .line 65
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timezone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->considerExistingRooms:Z

    iget-boolean v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->considerExistingRooms:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->calendarEventReference:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->calendarEventReference:Ljava/lang/String;

    .line 67
    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
