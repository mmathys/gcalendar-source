.class Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;
.super Lcom/google/api/client/json/GenericJson;
.source "ConsistencyChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Statistics"
.end annotation


# instance fields
.field checkedEvents:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field eventsToReport:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field failedEvents:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field inconsistentEvents:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field overfetchedBackendEvents:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field overfetchedClientEvents:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field skippedEvents:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 105
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->checkedEvents:Ljava/lang/Long;

    .line 107
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->skippedEvents:Ljava/lang/Long;

    .line 108
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->inconsistentEvents:Ljava/lang/Long;

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->eventsToReport:Ljava/lang/Long;

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedClientEvents:Ljava/lang/Long;

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->overfetchedBackendEvents:Ljava/lang/Long;

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;->failedEvents:Ljava/lang/Long;

    return-void
.end method
