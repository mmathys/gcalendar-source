.class public Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;
.super Lcom/google/api/client/json/GenericJson;
.source "GrooveSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarSyncState"
.end annotation


# instance fields
.field public lastSynced:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public nextSyncToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public version:I
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;->version:I

    .line 141
    # getter for: Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->access$000()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 142
    return-void
.end method
