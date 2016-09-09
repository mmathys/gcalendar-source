.class public Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;
.super Lcom/google/api/client/json/GenericJson;
.source "GrooveSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/GrooveSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSyncState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;
    }
.end annotation


# instance fields
.field public calendars:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState$CalendarSyncState;",
            ">;"
        }
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
    .line 134
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;->version:I

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;->calendars:Ljava/util/Map;

    .line 135
    # getter for: Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync;->access$000()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveSync$AccountSyncState;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 136
    return-void
.end method
