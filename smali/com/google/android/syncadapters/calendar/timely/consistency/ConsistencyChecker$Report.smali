.class Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;
.super Lcom/google/api/client/json/GenericJson;
.source "ConsistencyChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Report"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Requests;,
        Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;,
        Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;,
        Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;
    }
.end annotation


# instance fields
.field account:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field appVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field deviceDate:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field feedUpdatedTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final inconsistencies:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;",
            ">;"
        }
    .end annotation
.end field

.field final requests:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Requests;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final statistics:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 84
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 119
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->statistics:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Statistics;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->inconsistencies:Ljava/util/List;

    .line 123
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->deviceDate:Ljava/lang/Long;

    .line 124
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->feedUpdatedTime:Ljava/lang/Long;

    .line 125
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Requests;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Requests;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->requests:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Requests;

    return-void
.end method
