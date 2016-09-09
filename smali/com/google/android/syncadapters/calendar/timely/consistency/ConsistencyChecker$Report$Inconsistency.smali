.class Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Inconsistency;
.super Lcom/google/api/client/json/GenericJson;
.source "ConsistencyChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Inconsistency"
.end annotation


# instance fields
.field backendEvent:Lcom/google/api/services/calendar/model/Event;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field bucket:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Bucket;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field clientEvent:Lcom/google/api/services/calendar/model/Event;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field event:Lcom/google/api/services/calendar/model/Event;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method
