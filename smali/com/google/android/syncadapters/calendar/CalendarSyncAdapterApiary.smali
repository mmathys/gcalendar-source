.class public Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;
.super Lcom/android/emailcommon/syncadapter/LoggingThreadedSyncAdapter;
.source "CalendarSyncAdapterApiary.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary$CalendarSyncAdapterBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static final mCalendarColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mCalendarColorsGsf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEventColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEventColorsGsf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sEntityEndMarker:Lcom/google/android/apiary/EntityReader$EntityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apiary/EntityReader$EntityItem",
            "<",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field static final sEventEndMarker:Lcom/google/api/services/calendar/model/Event;

.field static sIsBundledWithApplication:Z


# instance fields
.field private final mAccountsWithColors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

.field mClient:Lcom/google/api/services/calendar/Calendar;

.field mHttpTransport:Lcom/google/api/client/http/HttpTransport;

.field mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

.field private mSyncDefaultWhitelistedEmails:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

.field private mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

.field private mUpdatedColorsFromGsf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColorsGsf:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColorsGsf:Ljava/util/Map;

    .line 178
    sput-boolean v3, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->sIsBundledWithApplication:Z

    .line 182
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "1"

    const v2, -0x538da2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "2"

    const v2, -0x2f949c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "3"

    const v2, -0x7c5de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "4"

    const v2, -0x5a8c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "5"

    const v2, -0x8ac9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "6"

    const/16 v2, -0x52ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "7"

    const v2, -0xbd296e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "8"

    const v2, -0xe9589b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "9"

    const v2, -0x842eb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "10"

    const v2, -0x4c2394

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "11"

    const v2, -0x4167d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "12"

    const v2, -0x52e9b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "13"

    const v2, -0x6d1e40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "14"

    const v2, -0x601e19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "15"

    const v2, -0x603919

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "16"

    const v2, -0xb67919

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "17"

    const v2, -0x656301

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "18"

    const v2, -0x466501

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "19"

    const v2, -0x3d3d3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "20"

    const v2, -0x354241

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "21"

    const v2, -0x335954

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "22"

    const v2, -0x96e4e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "23"

    const v2, -0x328b1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    const-string v1, "24"

    const v2, -0x5b851e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "1"

    const v2, -0x5b4204

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "2"

    const v2, -0x851841

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "3"

    const v2, -0x245201

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "4"

    const/16 v2, -0x7784

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "5"

    const v2, -0x428a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "6"

    const/16 v2, -0x4788

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "7"

    const v2, -0xb92925

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "8"

    const v2, -0x1e1e1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "9"

    const v2, -0xab7b13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "10"

    const v2, -0xae48b7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    const-string v1, "11"

    const v2, -0x23ded9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "calendar_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_color_index"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cal_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cal_sync4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cal_sync5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cal_sync9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "isPrimary AS isPrimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 319
    new-instance v0, Lcom/google/api/services/calendar/model/Event;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Event;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->sEventEndMarker:Lcom/google/api/services/calendar/model/Event;

    .line 320
    new-instance v0, Lcom/google/android/apiary/EntityReader$EntityItem;

    invoke-direct {v0, v4, v4}, Lcom/google/android/apiary/EntityReader$EntityItem;-><init>(Ljava/lang/Object;Landroid/content/Entity;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->sEntityEndMarker:Lcom/google/android/apiary/EntityReader$EntityItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 356
    invoke-direct {p0, p1, v1}, Lcom/android/emailcommon/syncadapter/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 339
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mHttpTransport:Lcom/google/api/client/http/HttpTransport;

    .line 342
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAccountsWithColors:Ljava/util/Set;

    .line 343
    iput-boolean v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mUpdatedColorsFromGsf:Z

    .line 348
    new-array v0, v1, [Lcom/google/android/syncadapters/calendar/SyncHooks;

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    .line 352
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    .line 358
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/CalendarUncaughtExceptionHandler;->installHandler(Landroid/content/Context;)V

    .line 360
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->initialize(Landroid/content/Context;)V

    .line 362
    invoke-static {p1}, Lcom/google/android/calendar/PerformanceMetricCollector;->start(Landroid/content/Context;)V

    .line 364
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->setupHooks()V

    .line 368
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    new-instance v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary$CalendarSyncAdapterBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary$CalendarSyncAdapterBroadcastReceiver;-><init>(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->initialize(Landroid/content/Context;)V

    .line 375
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->initialize(Landroid/content/Context;)V

    .line 377
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->hasContext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->setContext(Landroid/content/Context;)V

    .line 382
    :cond_0
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->initialize(Landroid/content/Context;)V

    .line 383
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    .line 384
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const/16 v1, 0x17

    .line 385
    invoke-static {p1}, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->getActiveExperiments(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(ILjava/lang/String;)V

    .line 388
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetSupport;->initialize(Landroid/content/Context;)V

    .line 389
    return-void
.end method

.method static addAsSyncAdapterCalendarDeleteOperation(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/Long;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 3691
    .line 3692
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3693
    if-eqz p2, :cond_0

    .line 3694
    const-string v1, "_id= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 3696
    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3697
    return-void
.end method

.method static addAsSyncAdapterDeleteOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/Long;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/accounts/Account;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 3704
    .line 3705
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3706
    if-eqz p3, :cond_0

    .line 3707
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "event_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 3709
    :cond_0
    invoke-virtual {v0, p4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3710
    return-void
.end method

.method static addAsSyncAdapterInsertOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 3728
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    .line 3729
    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3730
    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3731
    invoke-virtual {v0, p6}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3733
    if-eqz p4, :cond_0

    .line 3734
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3736
    :cond_0
    if-eqz p5, :cond_1

    .line 3738
    const-string v1, "event_id"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3740
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3741
    return-void
.end method

.method static addAsSyncAdapterSecondaryDeleteOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;JLjava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/accounts/Account;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3715
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    .line 3716
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 3718
    invoke-static {p5, v1}, Lcom/google/android/syncadapters/calendar/Utils;->getInClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v1, [Ljava/lang/String;

    .line 3719
    invoke-interface {p6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3717
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3720
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 3721
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3722
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 3716
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3723
    return-void
.end method

.method private static addAsSyncAdapterUpdateObjectsColorOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2059
    if-nez p3, :cond_1

    .line 2061
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_CALENDARS_ACCOUNT_AND_COLOR:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v2, v8

    aput-object p5, v2, v9

    .line 2062
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "calendar_color_index"

    .line 2065
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2066
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2061
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2070
    :cond_1
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v7

    sget-object v4, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v5, v7

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v5, v8

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2077
    if-eqz v1, :cond_0

    .line 2078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2080
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2081
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2084
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2086
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2087
    const-string v1, "calendar_id IN ("

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 2088
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2089
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 2090
    invoke-virtual {v1, v2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    aput-object v0, v2, v7

    const-string v0, "eventColor_index=?"

    aput-object v0, v2, v8

    .line 2092
    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    aput-object p5, v2, v7

    .line 2091
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "eventColor_index"

    .line 2096
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2097
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2089
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static addAsSyncAdapterUpdateOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3746
    .line 3747
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3748
    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3749
    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3750
    invoke-virtual {v0, p6}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3752
    if-eqz p4, :cond_0

    .line 3753
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 3755
    :cond_0
    if-eqz p5, :cond_1

    .line 3756
    const-string v1, "_id=?"

    new-array v2, v5, [Ljava/lang/String;

    aput-object v6, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 3757
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 3759
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3760
    return-void
.end method

.method private addMissingColors(Ljava/util/ArrayList;Landroid/accounts/Account;ILjava/util/Map;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2109
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2111
    invoke-interface {p5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p2, p3, v1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->newInsertColorAsSyncAdapter(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/Integer;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2112
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2114
    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2117
    :cond_1
    return-void
.end method

.method private addVirtualFeeds(Landroid/accounts/Account;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2390
    .line 2391
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_calendar_virtual_feed_subscription_sync"

    const/4 v2, 0x0

    .line 2390
    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 2395
    if-nez v0, :cond_1

    .line 2403
    :cond_0
    return-void

    .line 2399
    :cond_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->VIRTUAL_FEED_SUFFIXES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2400
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->generateDefaultFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2401
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2400
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private applyOperationsSingleEntityMode(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/EventHandler;Ljava/util/List;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Lcom/google/android/syncadapters/calendar/FeedState;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Lcom/google/android/syncadapters/calendar/EventHandler;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apiary/EntityReader$EntityItem",
            "<",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;>;",
            "Landroid/content/SyncResult;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncState;",
            "Lcom/google/android/syncadapters/calendar/FeedState;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3827
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Failed to apply a batch of entity operations. Retrying in single mode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3828
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3829
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apiary/EntityReader$EntityItem;

    .line 3830
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3831
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "applyOperationsSingleEntityMode: noticed a cancel, bailing out"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3839
    :cond_0
    return-void

    .line 3834
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 3836
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->convertIntoOperationsAndSaveSingleEvent(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/EventHandler;Lcom/google/android/apiary/EntityReader$EntityItem;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Lcom/google/android/syncadapters/calendar/FeedState;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private applyServerSmartmailAckValue(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1246
    if-nez p2, :cond_1

    .line 1247
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "Ack preference has no value"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getSmartmailAckPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 1251
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1252
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1254
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 1288
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Unexpected ack value from the server: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {v2, v3, v0}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1291
    :goto_2
    :pswitch_0
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1292
    if-eqz v0, :cond_0

    .line 1293
    const-string v0, "sync_extra_update_client_status"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->triggerSyncAdapterSyncWithExtras(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 1254
    :sswitch_0
    const-string v7, "INELIGIBLE"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v1

    goto :goto_1

    :sswitch_1
    const-string v7, "UNACKNOWLEDGED"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v0

    goto :goto_1

    :sswitch_2
    const-string v7, "ACKNOWLEDGED"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v3

    goto :goto_1

    .line 1256
    :pswitch_1
    invoke-interface {v6, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 1257
    goto :goto_2

    .line 1259
    :pswitch_2
    invoke-interface {v5, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1260
    packed-switch v2, :pswitch_data_1

    .line 1280
    const-string v3, "CalendarSyncAdapter"

    const-string v4, "Unexpected pref value: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1281
    goto :goto_2

    .line 1264
    :pswitch_3
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "Inconsistent SM ack state: invalid server ack recorded."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1269
    :pswitch_4
    invoke-interface {v6, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 1270
    goto :goto_2

    .line 1273
    :pswitch_5
    const/4 v2, 0x3

    invoke-interface {v6, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 1285
    :pswitch_6
    const/4 v0, 0x4

    invoke-interface {v6, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 1286
    goto :goto_2

    .line 1254
    :sswitch_data_0
    .sparse-switch
        -0x1cc4b99f -> :sswitch_1
        0xa723dfc -> :sswitch_0
        0x38ab5948 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 1260
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private attemptHookSpecificSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 842
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 843
    invoke-interface {v0, p1, p2}, Lcom/google/android/syncadapters/calendar/SyncHooks;->isHookSpecificSync(Landroid/accounts/Account;Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 844
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/SyncHooks;->performHookSpecificSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V

    .line 845
    const/4 v0, 0x1

    .line 848
    :goto_1
    return v0

    .line 842
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 848
    goto :goto_1
.end method

.method public static checkRuntimePermissions(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 442
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->canRequestPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {p0, v1}, Lcom/google/android/calendar/PermissionsUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.WRITE_CALENDAR"

    .line 446
    invoke-static {p0, v1}, Lcom/google/android/calendar/PermissionsUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupForUnsyncedCalendars(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2232
    .line 2233
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2232
    invoke-static {p0, v0, p2, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getOrCreate(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v7

    .line 2235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2239
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "sync_events"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "cal_sync1"

    aput-object v4, v3, v1

    sget-object v4, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_SYNC:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string v6, "0"

    aput-object v6, v5, v1

    const-string v6, "_id"

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2255
    const/4 v0, 0x0

    move-object v1, v0

    .line 2258
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2259
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2260
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-gez v0, :cond_1

    .line 2261
    const-string v0, "CalendarSyncAdapter"

    const-string v3, "Found a non valid CalendarId: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-static {v0, v3, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2326
    :catch_0
    move-exception v0

    .line 2327
    :try_start_1
    const-string v1, "CalendarSyncAdapter"

    const-string v3, "Cannot process cleanup Events operations"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2329
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2331
    :goto_1
    return-void

    .line 2264
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2265
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2268
    invoke-virtual {v7, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v8

    .line 2271
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/google/android/syncadapters/calendar/FeedState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x0

    .line 2274
    :goto_2
    if-eq v3, v0, :cond_0

    .line 2280
    if-nez v1, :cond_7

    .line 2281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    :goto_3
    if-eqz v8, :cond_3

    .line 2286
    const-string v1, "CalendarSyncAdapter"

    const-string v3, "Will clean feedSyncState for CalendarId: %d and Feed: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 2287
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    .line 2286
    invoke-static {v1, v3, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2288
    invoke-virtual {v8}, Lcom/google/android/syncadapters/calendar/FeedState;->clear()V

    .line 2296
    :cond_3
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v1

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2305
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "calendar_id=?"

    aput-object v8, v3, v6

    const/4 v6, 0x1

    const-string v8, "_sync_id IS NOT NULL"

    aput-object v8, v3, v6

    const/4 v6, 0x2

    const-string v8, "dirty=?"

    aput-object v8, v3, v6

    const/4 v6, 0x3

    const-string v8, "deleted=?"

    aput-object v8, v3, v6

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 2311
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v8

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v6, v4

    .line 2305
    invoke-virtual {v1, v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2316
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 2317
    goto/16 :goto_0

    .line 2271
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    .line 2320
    :cond_5
    if-eqz v1, :cond_6

    .line 2322
    invoke-virtual {v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2324
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->applyBatch(Landroid/content/ContentProviderClient;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2329
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method

.method private createAclListRequest(Lcom/google/api/services/calendar/model/CalendarListEntry;)Lcom/google/api/services/calendar/Calendar$Acl$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/Calendar;->acl()Lcom/google/api/services/calendar/Calendar$Acl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/Calendar$Acl;->list(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Acl$List;

    move-result-object v0

    return-object v0
.end method

.method private createCalendarListRequest()Lcom/google/api/services/calendar/Calendar$CalendarList$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/Calendar;->calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/Calendar$CalendarList;->list()Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v0

    const/4 v1, 0x1

    .line 3241
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v0

    const/16 v1, 0x64

    .line 3242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->setMaxResults(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v0

    .line 3240
    return-object v0
.end method

.method private createRecentNotificationsGetRequest()Lcom/google/api/services/calendar/Calendar$Settings$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/Calendar;->settings()Lcom/google/api/services/calendar/Calendar$Settings;

    move-result-object v0

    const-string v1, "goocal.recentreminders"

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/Calendar$Settings;->get(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Settings$Get;

    move-result-object v0

    return-object v0
.end method

.method private createSettingsListRequest()Lcom/google/api/services/calendar/Calendar$Settings$List;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/Calendar;->settings()Lcom/google/api/services/calendar/Calendar$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/Calendar$Settings;->list()Lcom/google/api/services/calendar/Calendar$Settings$List;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "goocal"

    aput-object v3, v1, v2

    .line 1194
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/Calendar$Settings$List;->setNamespace(Ljava/util/List;)Lcom/google/api/services/calendar/Calendar$Settings$List;

    move-result-object v0

    const/16 v1, 0x64

    .line 1195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/Calendar$Settings$List;->setMaxResults(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Settings$List;

    move-result-object v0

    .line 1193
    return-object v0
.end method

.method private deserializeRemindersList(Landroid/accounts/Account;ZLjava/lang/String;)V
    .locals 10

    .prologue
    .line 1690
    const-string v0, ","

    invoke-static {p3, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1691
    array-length v0, v4

    .line 1692
    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 1693
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Found an inappropriate number of recent notifications for account %s (%d): %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "CalendarSyncAdapter"

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1694
    invoke-static {v6, v7}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    array-length v6, v4

    .line 1695
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object p3, v3, v5

    .line 1693
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1697
    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 1700
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1703
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 1705
    :try_start_0
    aget-object v0, v4, v3

    const-string v2, ";"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1706
    array-length v0, v2

    const/4 v6, 0x2

    if-eq v0, v6, :cond_0

    .line 1707
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "Found a malformed notification for account %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "CalendarSyncAdapter"

    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1708
    invoke-static {v8, v9}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v4, v3

    aput-object v8, v6, v7

    .line 1707
    invoke-static {v0, v2, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1729
    :goto_2
    return-void

    .line 1711
    :cond_0
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1712
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->METHOD_LABELS_TO_VALUES:Ljava/util/Map;

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1713
    if-eqz v0, :cond_2

    .line 1714
    new-instance v7, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    if-eqz p2, :cond_1

    .line 1715
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v2, v6, v0}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    .line 1714
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1703
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1715
    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    .line 1717
    :cond_2
    const-string v0, "CalendarSyncAdapter"

    const-string v6, "Unable to find method for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v2, v2, v9

    aput-object v2, v7, v8

    invoke-static {v0, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1719
    :catch_0
    move-exception v0

    .line 1720
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "Malformed minutes in notification for account %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "CalendarSyncAdapter"

    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1721
    invoke-static {v8, v9}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v4, v3

    aput-object v8, v6, v7

    .line 1720
    invoke-static {v0, v2, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    .line 1725
    :cond_3
    const-string v0, "DB: notifications.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1726
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1727
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    .line 1726
    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateRecentlyUsedNotifications(Landroid/content/Context;Landroid/accounts/Account;Z[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V

    .line 1728
    const-string v0, "DB: notifications.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto/16 :goto_0
.end method

.method static generateDefaultFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2384
    const-string v0, "http://www.google.com/calendar/feeds/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/private/full"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCalendarColorForId(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 4239
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getContentValue(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 4620
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 4622
    const-string v1, "sync_data9"

    .line 4623
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->getEventExtrasFlagsValue(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)I

    move-result v2

    .line 4622
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4623
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4622
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4625
    return-object v0
.end method

.method private getDefaultNotifications(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1819
    const-string v0, "Get Default Notifications"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1820
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createCalendarListRequest()Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v8

    .line 1821
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v1, "API: Get Calendars List"

    invoke-virtual {v0, v1, v8}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/api/services/calendar/model/CalendarList;

    .line 1825
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1826
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v11

    const-string v1, "ownerAccount"

    aput-object v1, v3, v12

    sget-object v4, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v5, v11

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v5, v12

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1837
    if-eqz v1, :cond_1

    .line 1839
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1840
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1841
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1842
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1845
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1850
    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/google/api/services/calendar/model/CalendarList;->getNextPageToken()Ljava/lang/String;

    move-result-object v10

    .line 1851
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "calendarList.nextPageToken: %s"

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v10, v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1852
    if-eqz v10, :cond_2

    .line 1853
    invoke-virtual {v8, v10}, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    .line 1854
    const-string v0, "API: Get Calendars List"

    invoke-direct {p0, v0, v8}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V

    .line 1856
    :cond_2
    invoke-virtual {v7}, Lcom/google/api/services/calendar/model/CalendarList;->getItems()Ljava/util/List;

    move-result-object v0

    .line 1857
    if-eqz v0, :cond_4

    .line 1858
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 1859
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    .line 1860
    if-nez v6, :cond_3

    .line 1861
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "Unable to find calendar %s"

    new-array v3, v12, [Ljava/lang/Object;

    const-string v4, "CalendarSyncAdapter"

    .line 1862
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v11

    .line 1861
    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 1866
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    move-object v4, p1

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->parseDefaultNotifications(Lcom/google/api/services/calendar/model/CalendarListEntry;JLandroid/accounts/Account;Z)V

    .line 1867
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    move-object v4, p1

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->parseDefaultNotifications(Lcom/google/api/services/calendar/model/CalendarListEntry;JLandroid/accounts/Account;Z)V

    goto :goto_2

    .line 1870
    :cond_4
    if-nez v10, :cond_5

    .line 1875
    const-string v0, "Get Default Notifications"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1876
    return-void

    .line 1873
    :cond_5
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v1, "API: Get Calendars List"

    invoke-virtual {v0, v1, v8}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/CalendarList;

    move-object v7, v0

    .line 1874
    goto :goto_1
.end method

.method private static getDeviceSyncWindowAdjustment(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 4637
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/calendar/DeviceUtils;->getDeviceBucket(Landroid/content/Context;II)I

    move-result v0

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getExpectedFeeds(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Ljava/util/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2335
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2336
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v5, [Ljava/lang/String;

    const-string v1, "cal_sync1"

    aput-object v1, v3, v7

    const-string v1, "ownerAccount"

    aput-object v1, v3, v6

    const-string v1, "COALESCE(isPrimary,account_name=ownerAccount) AS isPrimary"

    aput-object v1, v3, v9

    sget-object v4, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_SYNC:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/String;

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v5, v7

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v5, v6

    const-string v1, "1"

    aput-object v1, v5, v9

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2347
    if-nez v1, :cond_0

    .line 2348
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 2350
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2352
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2353
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2354
    if-nez v0, :cond_2

    .line 2355
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2356
    const-string v3, "CalendarSyncAdapter"

    invoke-static {v3, v0}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2357
    const-string v3, "CalendarSyncAdapter"

    const-string v4, "Attempt to subscribe to feed %s with null id."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2375
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2359
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->generateDefaultFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2360
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2361
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 2364
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 2365
    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 2366
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v4, v3

    move v0, v7

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 2367
    invoke-interface {v5, v2}, Lcom/google/android/syncadapters/calendar/SyncHooks;->generateSubscriptionUrl(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v5

    .line 2368
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2369
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2366
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2375
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2379
    invoke-direct {p0, p2, v8}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addVirtualFeeds(Landroid/accounts/Account;Ljava/util/HashSet;)V

    .line 2380
    return-object v8
.end method

.method public static getFeedId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    const-string v0, "feed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    const-string v0, "feed"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    :goto_0
    return-object v0

    .line 889
    :cond_0
    const-string v0, "feed_internal"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getGServicesMaxEventsToFetchPerPage()I
    .locals 3

    .prologue
    .line 3065
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_calendar_sync_num_events_per_batch"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getNumChanges(Landroid/content/SyncResult;)J
    .locals 4

    .prologue
    .line 4107
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v0, v2

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getOrCreateSyncState(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 3547
    invoke-static {p0, p1, p3, p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getOrCreate(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v0

    .line 3551
    invoke-virtual {v0, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->hasFeed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3552
    invoke-virtual {v0, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->addFeed(Ljava/lang/String;)V

    .line 3553
    invoke-virtual {v0, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 3556
    :cond_0
    return-object v0
.end method

.method private getRecentNotifications(Landroid/accounts/Account;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1644
    const-string v0, "Get Recent Notifications"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1647
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v1, "API: Get Recent Notifications"

    .line 1649
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createRecentNotificationsGetRequest()Lcom/google/api/services/calendar/Calendar$Settings$Get;

    move-result-object v2

    .line 1647
    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Setting;

    .line 1650
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Setting;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1662
    invoke-virtual {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->saveRecentNotifications(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1663
    const-string v0, "Get Recent Notifications"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1664
    :cond_0
    return-void

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    const-string v1, "Get Recent Notifications"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    .line 1658
    throw v0
.end method

.method private getRestoreTimelyDataKey(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 4338
    const-string v0, "restoreTimelyData_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServerDiffsForCalendar(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/os/Bundle;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Ljava/lang/String;)V
    .locals 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 2780
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3062
    :goto_0
    return-void

    .line 2783
    :cond_0
    const-string v4, "Get Server Diffs for Calendar"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 2784
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "starting getServerDiffsForCalendar %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p7, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2786
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    iput-object v0, v1, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarSyncId:Ljava/lang/String;

    .line 2787
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 2788
    const-string v4, "google_calendar_sync_entry_fetch_queue_size"

    const/16 v5, 0x32

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 2792
    const-string v5, "google_calendar_sync_entity_fetch_queue_size"

    const/16 v6, 0x32

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2797
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 2799
    new-instance v21, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 2802
    const/4 v15, 0x0

    .line 2803
    const/16 v26, 0x0

    .line 2805
    const/16 v28, 0x0

    .line 2806
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    .line 2808
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v10

    .line 2809
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "FeedSyncState is: %s for Url: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v10, v6, v8

    const/4 v8, 0x1

    aput-object p7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2812
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getSyncWindowEnd(Landroid/content/Context;)J

    move-result-wide v4

    .line 2814
    :try_start_0
    const-string v6, "moveWindow"

    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2815
    invoke-static {v6, v4, v5, v10}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->selectServerSyncMode(ZJLcom/google/android/syncadapters/calendar/FeedState;)I

    move-result v6

    .line 2817
    packed-switch v6, :pswitch_data_0

    .line 2849
    :cond_1
    :goto_1
    :pswitch_0
    const-string v4, "google_calendar_sync_max_attendees"

    const/16 v5, 0x32

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 2853
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/FeedState;->getWindowEnd()J

    move-result-wide v4

    move-object/from16 v0, p6

    iput-wide v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->slidingWindowEnd:J

    .line 2854
    new-instance v4, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 2855
    invoke-virtual {v5}, Lcom/google/api/services/calendar/Calendar;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 2856
    invoke-virtual {v6}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/Calendar$Events;->list(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v6

    sget-object v8, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->sEventEndMarker:Lcom/google/api/services/calendar/model/Event;

    const-string v9, "CalendarSyncAdapter"

    .line 2862
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getGServicesMaxEventsToFetchPerPage()I

    move-result v12

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2863
    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    .line 2864
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v14

    invoke-direct/range {v4 .. v14}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;-><init>(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/services/calendar/Calendar$Events$List;Ljava/util/concurrent/BlockingQueue;Lcom/google/api/services/calendar/model/Event;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/FeedState;IIZI)V
    :try_end_0
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2865
    :try_start_1
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "EventFeedFetcher"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2866
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 2867
    new-instance v11, Lcom/google/android/syncadapters/calendar/EventHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    move-object/from16 v20, v0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v18, p7

    invoke-direct/range {v11 .. v20}, Lcom/google/android/syncadapters/calendar/EventHandler;-><init>(Landroid/content/Context;Lcom/google/api/services/calendar/Calendar;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/ContentResolver;Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Ljava/lang/String;[Lcom/google/android/syncadapters/calendar/SyncHooks;Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;)V

    .line 2869
    new-instance v17, Lcom/google/android/apiary/EntityReader;

    const-string v18, "CalendarSyncAdapter"

    sget-object v20, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->sEventEndMarker:Lcom/google/api/services/calendar/model/Event;

    sget-object v22, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->sEntityEndMarker:Lcom/google/android/apiary/EntityReader$EntityItem;

    const-string v24, "_sync_id"

    const-string v5, "cal_sync1="

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2878
    invoke-static/range {p7 .. p7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    :goto_2
    move-object/from16 v19, v7

    move-object/from16 v23, v11

    invoke-direct/range {v17 .. v25}, Lcom/google/android/apiary/EntityReader;-><init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/apiary/EntityReader$EntityItem;Lcom/google/android/apiary/ItemAndEntityHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lcom/google/android/apiary/ParseException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2879
    :try_start_2
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "EntityReader"

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2880
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 2882
    const-string v5, "CalendarSyncAdapter"

    const-string v6, "starting processing of fetched entries"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2884
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->waitForEnvelope()V

    .line 2885
    const-string v5, "CalendarSyncAdapter"

    const-string v6, "Feed envelope parsed"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2887
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->getTimeZone()Ljava/lang/String;

    move-result-object v5

    .line 2888
    if-eqz v5, :cond_2

    .line 2889
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "Setting timezone to %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2890
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 2892
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->getDefaultReminders()Ljava/util/List;

    move-result-object v5

    .line 2893
    if-eqz v5, :cond_3

    .line 2894
    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->defaultReminders:Ljava/util/List;

    .line 2896
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->getDefaultAllDayReminders()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->defaultAllDayReminders:Ljava/util/List;

    .line 2898
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 2899
    const-string v5, "google_calendar_sync_num_applications_per_batch"

    const-wide/16 v6, 0x14

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 2904
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->getAccessRole()Ljava/lang/String;

    move-result-object v5

    .line 2905
    if-eqz v5, :cond_f

    .line 2906
    invoke-static {v5}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->getAccessLevel(Ljava/lang/String;)I

    move-result v5

    .line 2907
    move-object/from16 v0, p6

    iget v6, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->accessLevel:I

    if-eq v5, v6, :cond_f

    .line 2908
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 2909
    const-string v6, "calendar_access_level"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2910
    invoke-static/range {p1 .. p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v22

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p6

    iget-wide v12, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    .line 2912
    invoke-static {v6, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, p2

    .line 2910
    invoke-virtual/range {v22 .. v27}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2916
    move-object/from16 v0, p6

    iget v6, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->accessLevel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->shouldResyncCalendar(II)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2917
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Ljava/lang/String;)V

    .line 2918
    const-string v5, "CalendarSyncAdapter"

    const-string v6, "Access level changed for %s. Requesting full sync"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "CalendarSyncAdapter"

    .line 2919
    move-object/from16 v0, p7

    invoke-static {v9, v0}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 2918
    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2920
    const-string v5, "com.android.calendar"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lcom/google/android/apiary/ParseException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 3047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3048
    const-string v5, "FAILURE"

    .line 3049
    const-string v8, "CalendarSyncAdapter"

    const-string v9, "%s: processed %d records in %d ms from feed %s, updated time is %s"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v5, 0x1

    .line 3051
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    const/4 v5, 0x2

    sub-long v6, v6, v44

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x3

    aput-object p7, v11, v5

    const/4 v5, 0x4

    .line 3052
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v5

    .line 3049
    invoke-static {v8, v9, v11}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3054
    if-eqz v4, :cond_4

    .line 3055
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->close()V

    .line 3057
    :cond_4
    if-eqz v17, :cond_5

    .line 3058
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apiary/EntityReader;->close()V

    .line 3060
    :cond_5
    const-string v4, "Get Server Diffs for Calendar"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2820
    :pswitch_1
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateProviderForInitialSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;)V

    .line 2822
    const-string v6, "CalendarSyncAdapter"

    const-string v8, "Performing initial sync on calendarId: %s: window end = %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p6

    iget-wide v12, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    .line 2823
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    .line 2822
    invoke-static {v6, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2824
    invoke-virtual {v10, v4, v5}, Lcom/google/android/syncadapters/calendar/FeedState;->setWindowEnd(J)V
    :try_end_3
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/apiary/ParseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_1

    .line 3024
    :catch_0
    move-exception v4

    move/from16 v5, v28

    move-object/from16 v17, v26

    move-object v6, v15

    .line 3027
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3045
    :catchall_0
    move-exception v4

    move/from16 v28, v5

    move-object v15, v6

    move-object v5, v4

    .line 3047
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3048
    const-string v4, "FAILURE"

    .line 3049
    const-string v8, "CalendarSyncAdapter"

    const-string v9, "%s: processed %d records in %d ms from feed %s, updated time is %s"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v4, 0x1

    .line 3051
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    const/4 v4, 0x2

    sub-long v6, v6, v44

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v4

    const/4 v4, 0x3

    aput-object p7, v11, v4

    const/4 v4, 0x4

    .line 3052
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v4

    .line 3049
    invoke-static {v8, v9, v11}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3054
    if-eqz v15, :cond_6

    .line 3055
    invoke-virtual {v15}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->close()V

    .line 3057
    :cond_6
    if-eqz v17, :cond_7

    .line 3058
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apiary/EntityReader;->close()V

    .line 3060
    :cond_7
    const-string v4, "Get Server Diffs for Calendar"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v5

    .line 2827
    :pswitch_2
    :try_start_5
    invoke-virtual {v10, v4, v5}, Lcom/google/android/syncadapters/calendar/FeedState;->setMoveWindowEnd(J)V
    :try_end_5
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/google/android/apiary/ParseException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_1

    .line 3028
    :catch_1
    move-exception v4

    move-object/from16 v17, v26

    .line 3029
    :goto_5
    :try_start_6
    const-string v5, "getServerDiffs failed"

    invoke-static {v4, v5}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v5, "getServerDiffsImpl"

    const-string v6, "IOException"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 3047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3048
    const-string v4, "FAILURE"

    .line 3049
    const-string v5, "CalendarSyncAdapter"

    const-string v8, "%s: processed %d records in %d ms from feed %s, updated time is %s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    const/4 v4, 0x1

    .line 3051
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v4

    const/4 v4, 0x2

    sub-long v6, v6, v44

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x3

    aput-object p7, v9, v4

    const/4 v4, 0x4

    .line 3052
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    .line 3049
    invoke-static {v5, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3054
    if-eqz v15, :cond_8

    .line 3055
    invoke-virtual {v15}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->close()V

    .line 3057
    :cond_8
    if-eqz v17, :cond_9

    .line 3058
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apiary/EntityReader;->close()V

    .line 3060
    :cond_9
    const-string v4, "Get Server Diffs for Calendar"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2831
    :pswitch_3
    :try_start_7
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2832
    const-string v5, "moveWindow"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2835
    const-string v5, "force"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2836
    const-string v5, "CalendarSyncAdapter"

    const-string v6, "Requesting move sync for %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p7, v8, v9

    invoke-static {v5, v6, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2837
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->requestSingleFeedSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_7
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/google/android/apiary/ParseException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_1

    .line 3032
    :catch_2
    move-exception v4

    move-object/from16 v17, v26

    .line 3033
    :goto_6
    :try_start_8
    const-string v5, "getServerDiffs failed"

    invoke-static {v4, v5}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3034
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v5, "getServerDiffsImpl"

    const-string v6, "RemoteException"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 3047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3048
    const-string v4, "FAILURE"

    .line 3049
    const-string v5, "CalendarSyncAdapter"

    const-string v8, "%s: processed %d records in %d ms from feed %s, updated time is %s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    const/4 v4, 0x1

    .line 3051
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v4

    const/4 v4, 0x2

    sub-long v6, v6, v44

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x3

    aput-object p7, v9, v4

    const/4 v4, 0x4

    .line 3052
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    .line 3049
    invoke-static {v5, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3054
    if-eqz v15, :cond_a

    .line 3055
    invoke-virtual {v15}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->close()V

    .line 3057
    :cond_a
    if-eqz v17, :cond_b

    .line 3058
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apiary/EntityReader;->close()V

    .line 3060
    :cond_b
    const-string v4, "Get Server Diffs for Calendar"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2841
    :pswitch_4
    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gtz v4, :cond_1

    .line 2843
    const-wide/16 v4, 0x0

    :try_start_9
    invoke-virtual {v10, v4, v5}, Lcom/google/android/syncadapters/calendar/FeedState;->setWindowEnd(J)V
    :try_end_9
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/google/android/apiary/ParseException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_1

    .line 3036
    :catch_3
    move-exception v4

    move-object/from16 v17, v26

    .line 3037
    :goto_7
    :try_start_a
    const-string v5, "getServerDiffs failed"

    invoke-static {v4, v5}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v5, "getServerDiffsImpl"

    const-string v6, "ParseException"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 3047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3048
    const-string v4, "FAILURE"

    .line 3049
    const-string v5, "CalendarSyncAdapter"

    const-string v8, "%s: processed %d records in %d ms from feed %s, updated time is %s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    const/4 v4, 0x1

    .line 3051
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v4

    const/4 v4, 0x2

    sub-long v6, v6, v44

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x3

    aput-object p7, v9, v4

    const/4 v4, 0x4

    .line 3052
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    .line 3049
    invoke-static {v5, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3054
    if-eqz v15, :cond_c

    .line 3055
    invoke-virtual {v15}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->close()V

    .line 3057
    :cond_c
    if-eqz v17, :cond_d

    .line 3058
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apiary/EntityReader;->close()V

    .line 3060
    :cond_d
    const-string v4, "Get Server Diffs for Calendar"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2878
    :cond_e
    :try_start_b
    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_11
    .catch Lcom/google/android/apiary/ParseException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_2

    .line 3024
    :catch_4
    move-exception v5

    move-object/from16 v17, v26

    move-object v6, v4

    move-object v4, v5

    move/from16 v5, v28

    goto/16 :goto_3

    .line 2926
    :cond_f
    :try_start_c
    invoke-static/range {p4 .. p4}, Lcom/google/android/calendar/SyncUtil;->backUpSyncStats(Landroid/content/SyncResult;)Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;

    move-result-object v5

    .line 2931
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_12
    .catch Lcom/google/android/apiary/ParseException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v6, v28

    move-object/from16 v28, v5

    .line 2933
    :cond_10
    :goto_8
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2934
    const-string v5, "CalendarSyncAdapter"

    const-string v7, "getServerDiffs: noticed a cancel during feed %s, bailing out"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p7, v8, v9

    invoke-static {v5, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_d
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_8
    .catch Lcom/google/android/apiary/ParseException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 3047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3048
    const-string v5, "FAILURE"

    .line 3049
    const-string v7, "CalendarSyncAdapter"

    const-string v11, "%s: processed %d records in %d ms from feed %s, updated time is %s"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v5, 0x1

    .line 3051
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v5

    const/4 v5, 0x2

    sub-long v8, v8, v44

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v5

    const/4 v5, 0x3

    aput-object p7, v12, v5

    const/4 v5, 0x4

    .line 3052
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v5

    .line 3049
    invoke-static {v7, v11, v12}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3054
    if-eqz v4, :cond_11

    .line 3055
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->close()V

    .line 3057
    :cond_11
    if-eqz v17, :cond_12

    .line 3058
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apiary/EntityReader;->close()V

    .line 3060
    :cond_12
    const-string v4, "Get Server Diffs for Calendar"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2939
    :cond_13
    :try_start_e
    invoke-interface/range {v21 .. v21}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apiary/EntityReader$EntityItem;

    .line 2940
    sget-object v7, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->sEntityEndMarker:Lcom/google/android/apiary/EntityReader$EntityItem;

    if-ne v5, v7, :cond_16

    move-object/from16 v18, p0

    move-object/from16 v19, p2

    move-object/from16 v20, p1

    move-object/from16 v21, v11

    move-object/from16 v22, v30

    move-object/from16 v24, p4

    move-object/from16 v25, p6

    move-object/from16 v26, p5

    move-object/from16 v27, v10

    .line 2942
    invoke-virtual/range {v18 .. v28}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperations(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/EventHandler;Ljava/util/ArrayList;Ljava/util/List;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Lcom/google/android/syncadapters/calendar/FeedState;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;)V

    .line 3002
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->isPartialSyncUnavailable()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 3003
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Ljava/lang/String;)V

    .line 3004
    const-string v5, "com.android.calendar"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3005
    const-string v5, "CalendarSyncAdapter"

    const-string v7, "Partial sync unavailable for %s. Requesting full sync"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v11, "CalendarSyncAdapter"

    .line 3006
    move-object/from16 v0, p7

    invoke-static {v11, v0}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    .line 3005
    invoke-static {v5, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_e
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lcom/google/android/apiary/ParseException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 3047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3048
    const-string v5, "FAILURE"

    .line 3049
    const-string v7, "CalendarSyncAdapter"

    const-string v11, "%s: processed %d records in %d ms from feed %s, updated time is %s"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v5, 0x1

    .line 3051
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v5

    const/4 v5, 0x2

    sub-long v8, v8, v44

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v5

    const/4 v5, 0x3

    aput-object p7, v12, v5

    const/4 v5, 0x4

    .line 3052
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v5

    .line 3049
    invoke-static {v7, v11, v12}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3054
    if-eqz v4, :cond_14

    .line 3055
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->close()V

    .line 3057
    :cond_14
    if-eqz v17, :cond_15

    .line 3058
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apiary/EntityReader;->close()V

    .line 3060
    :cond_15
    const-string v4, "Get Server Diffs for Calendar"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2955
    :cond_16
    :try_start_f
    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v7, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v7, Landroid/content/SyncStats;->numEntries:J

    .line 2957
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2958
    iget-object v0, v5, Lcom/google/android/apiary/EntityReader$EntityItem;->entry:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/google/api/services/calendar/model/Event;

    .line 2959
    iget-object v0, v5, Lcom/google/android/apiary/EntityReader$EntityItem;->entity:Landroid/content/Entity;

    move-object/from16 v32, v0

    .line 2960
    const-string v5, "CalendarSyncAdapter"

    const-string v7, "calling applyItemToEntity for %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {v31 .. v31}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v5, v7, v12}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2961
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 2962
    invoke-static/range {p4 .. p4}, Lcom/google/android/calendar/SyncUtil;->backUpSyncStats(Landroid/content/SyncResult;)Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;
    :try_end_f
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_8
    .catch Lcom/google/android/apiary/ParseException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v42

    .line 2964
    const/16 v33, 0x0

    move-object/from16 v29, v11

    move-object/from16 v34, p4

    move-object/from16 v35, p6

    :try_start_10
    invoke-virtual/range {v29 .. v35}, Lcom/google/android/syncadapters/calendar/EventHandler;->applyItemToEntity(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;ZLandroid/content/SyncResult;Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lcom/google/android/apiary/ParseException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 2975
    :try_start_11
    invoke-virtual/range {v31 .. v31}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/google/android/syncadapters/calendar/FeedState;->setIdOfLastFetchedEvent(Ljava/lang/String;)V

    .line 2976
    const-string v5, "CalendarSyncAdapter"

    const-string v7, "Processing event %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {v31 .. v31}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v5, v7, v12}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2977
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2978
    add-int/lit8 v6, v6, 0x1

    .line 2979
    int-to-long v12, v6

    rem-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-nez v5, :cond_10

    move-object/from16 v31, p0

    move-object/from16 v32, p2

    move-object/from16 v33, p1

    move-object/from16 v34, v11

    move-object/from16 v35, v30

    move-object/from16 v36, v23

    move-object/from16 v37, p4

    move-object/from16 v38, p6

    move-object/from16 v39, p5

    move-object/from16 v40, v10

    move-object/from16 v41, v28

    .line 2980
    invoke-virtual/range {v31 .. v41}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperations(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/EventHandler;Ljava/util/ArrayList;Ljava/util/List;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Lcom/google/android/syncadapters/calendar/FeedState;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;)V

    .line 2992
    invoke-static/range {p4 .. p4}, Lcom/google/android/calendar/SyncUtil;->backUpSyncStats(Landroid/content/SyncResult;)Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;

    move-result-object v28

    .line 2994
    const-string v5, "CalendarSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "CalendarSyncAdapterP"

    const/4 v7, 0x2

    .line 2995
    invoke-static {v5, v7}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2996
    :cond_17
    const-string v5, "CalendarSyncAdapter"

    const-string v7, "Applied %d records in %d ms from feed %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 2997
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v44

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object p7, v12, v13

    .line 2996
    invoke-static {v5, v7, v12}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_8

    .line 3024
    :catch_5
    move-exception v5

    move-object/from16 v46, v5

    move v5, v6

    move-object v6, v4

    move-object/from16 v4, v46

    goto/16 :goto_3

    .line 2970
    :catch_6
    move-exception v37

    .line 2971
    :goto_9
    const-string v34, "Preparing operation list failed, skipping"

    move-object/from16 v33, p0

    move-object/from16 v35, v30

    move-object/from16 v38, p6

    move-object/from16 v39, v31

    move-object/from16 v40, v32

    move-object/from16 v41, p4

    invoke-direct/range {v33 .. v42}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->skipEntry(Ljava/lang/String;Ljava/util/List;ILjava/lang/Throwable;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;)V

    goto/16 :goto_8

    .line 3028
    :catch_7
    move-exception v5

    move/from16 v28, v6

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_5

    .line 3009
    :cond_18
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->isIoException()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 3010
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Connection failed during feed read of "

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_19

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_a
    invoke-direct {v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3032
    :catch_8
    move-exception v5

    move/from16 v28, v6

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_6

    .line 3010
    :cond_19
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a

    .line 3036
    :catch_9
    move-exception v5

    move/from16 v28, v6

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_7

    .line 3012
    :cond_1a
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 3013
    new-instance v7, Lcom/google/android/apiary/AuthenticationException;

    const-string v8, "Authentication error reading feed "

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_b
    invoke-direct {v7, v5}, Lcom/google/android/apiary/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_11
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Lcom/google/android/apiary/ParseException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 3040
    :catch_a
    move-exception v5

    move/from16 v28, v6

    move-object v15, v4

    move-object v4, v5

    .line 3041
    :goto_c
    :try_start_12
    const-string v5, "getServerDiffs interrupted"

    invoke-static {v4, v5}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v5, "getServerDiffsImpl"

    const-string v6, "InterruptedException"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 3047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3048
    const-string v4, "FAILURE"

    .line 3049
    const-string v5, "CalendarSyncAdapter"

    const-string v8, "%s: processed %d records in %d ms from feed %s, updated time is %s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    const/4 v4, 0x1

    .line 3051
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v4

    const/4 v4, 0x2

    sub-long v6, v6, v44

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x3

    aput-object p7, v9, v4

    const/4 v4, 0x4

    .line 3052
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    .line 3049
    invoke-static {v5, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3054
    if-eqz v15, :cond_1b

    .line 3055
    invoke-virtual {v15}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->close()V

    .line 3057
    :cond_1b
    if-eqz v17, :cond_1c

    .line 3058
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apiary/EntityReader;->close()V

    .line 3060
    :cond_1c
    const-string v4, "Get Server Diffs for Calendar"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3013
    :cond_1d
    :try_start_13
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b

    .line 3045
    :catchall_1
    move-exception v5

    move/from16 v28, v6

    move-object v15, v4

    goto/16 :goto_4

    .line 3016
    :cond_1e
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->isResourceUnavailable()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 3017
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->getRetryAfter()J

    move-result-wide v8

    .line 3018
    move-object/from16 v0, p4

    iget-wide v12, v0, Landroid/content/SyncResult;->delayUntil:J

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p4

    iput-wide v12, v0, Landroid/content/SyncResult;->delayUntil:J

    .line 3019
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v11, 0x37

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Resource unavailable, retryAfter = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3022
    :cond_1f
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->getLastUpdated()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    move-object/from16 v15, p7

    move-object/from16 v16, p6

    .line 3021
    invoke-static/range {v11 .. v16}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateSyncStateAfterFeedRead(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;)V
    :try_end_13
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Lcom/google/android/apiary/ParseException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 3045
    const-string v5, "CalendarSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_20

    const-string v5, "CalendarSyncAdapterP"

    const/4 v7, 0x2

    .line 3046
    invoke-static {v5, v7}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 3047
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3048
    const-string v5, "SUCCESS"

    .line 3049
    const-string v7, "CalendarSyncAdapter"

    const-string v11, "%s: processed %d records in %d ms from feed %s, updated time is %s"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v5, 0x1

    .line 3051
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v5

    const/4 v5, 0x2

    sub-long v8, v8, v44

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v5

    const/4 v5, 0x3

    aput-object p7, v12, v5

    const/4 v5, 0x4

    .line 3052
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v5

    .line 3049
    invoke-static {v7, v11, v12}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3054
    :cond_21
    if-eqz v4, :cond_22

    .line 3055
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/EventFeedFetcher;->close()V

    .line 3057
    :cond_22
    if-eqz v17, :cond_23

    .line 3058
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apiary/EntityReader;->close()V

    .line 3060
    :cond_23
    const-string v4, "Get Server Diffs for Calendar"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2970
    :catch_b
    move-exception v37

    goto/16 :goto_9

    .line 3045
    :catchall_2
    move-exception v4

    move-object v5, v4

    move-object/from16 v17, v26

    goto/16 :goto_4

    :catchall_3
    move-exception v5

    move-object/from16 v17, v26

    move-object v15, v4

    goto/16 :goto_4

    :catchall_4
    move-exception v5

    move-object v15, v4

    goto/16 :goto_4

    :catchall_5
    move-exception v4

    move-object v5, v4

    goto/16 :goto_4

    .line 3040
    :catch_c
    move-exception v4

    move-object/from16 v17, v26

    goto/16 :goto_c

    :catch_d
    move-exception v5

    move-object/from16 v17, v26

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_c

    :catch_e
    move-exception v5

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_c

    .line 3036
    :catch_f
    move-exception v5

    move-object/from16 v17, v26

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_7

    :catch_10
    move-exception v5

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_7

    .line 3032
    :catch_11
    move-exception v5

    move-object/from16 v17, v26

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_12
    move-exception v5

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_6

    .line 3028
    :catch_13
    move-exception v5

    move-object/from16 v17, v26

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_5

    :catch_14
    move-exception v5

    move-object v15, v4

    move-object v4, v5

    goto/16 :goto_5

    .line 3024
    :catch_15
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    move/from16 v5, v28

    goto/16 :goto_3

    .line 2817
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getServerDiffsForFeed(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/os/Bundle;Landroid/content/SyncResult;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 2656
    if-eqz p3, :cond_1

    const-string v0, "metafeedonly"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2657
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "\'metafeedonly\' and \'feed\' extras both set. They are not compatible."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2744
    :cond_0
    :goto_0
    return-void

    .line 2662
    :cond_1
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "FeedId (unparsed): %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2665
    invoke-static/range {p5 .. p5}, Lcom/google/android/syncadapters/calendar/Utils;->parseFeedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2669
    invoke-direct {p0, p1, v7, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->performVirtualFeedSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2675
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2674
    invoke-direct {p0, v0, p1, p2, v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getOrCreateSyncState(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v8

    .line 2678
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "sync_events"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "calendar_timezone"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "calendar_access_level"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "account_name=?"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "account_type=?"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "cal_sync1=?"

    aput-object v5, v1, v4

    .line 2687
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x2

    aput-object v7, v5, v1

    const/4 v6, 0x0

    move-object v1, p2

    .line 2678
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2694
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2697
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 2742
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2701
    :cond_2
    :try_start_1
    new-instance v6, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;

    invoke-direct {v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;-><init>()V

    .line 2702
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    .line 2703
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 2704
    :goto_1
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 2705
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->accessLevel:I

    .line 2706
    iput-object p1, v6, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->account:Landroid/accounts/Account;

    .line 2708
    if-nez v0, :cond_4

    .line 2711
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Ignoring sync request for non-syncable feed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2742
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2703
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v8

    .line 2715
    :try_start_2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getServerDiffsForCalendar(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/os/Bundle;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Ljava/lang/String;)V

    .line 2724
    invoke-virtual/range {p4 .. p4}, Landroid/content/SyncResult;->hasError()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 2742
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2729
    :cond_5
    :try_start_3
    iget-object v0, v6, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarTimezone:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2730
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Timezone changed %s => %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    const/4 v3, 0x1

    iget-object v4, v6, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarTimezone:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2732
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 2733
    const-string v0, "calendar_timezone"

    iget-object v1, v6, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarTimezone:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v6, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    .line 2736
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, v10

    .line 2734
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2742
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getStoredCalendarsForAccount(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Landroid/util/LongSparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            ")",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 3121
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 3122
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v6

    const-string v1, "ownerAccount"

    aput-object v1, v3, v8

    new-array v1, v5, [Ljava/lang/String;

    const-string v4, "account_name=?"

    aput-object v4, v1, v6

    const-string v4, "account_type=?"

    aput-object v4, v1, v8

    .line 3126
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v5, v6

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v5, v8

    const/4 v6, 0x0

    move-object v1, p1

    .line 3122
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3129
    if-eqz v1, :cond_1

    .line 3131
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3132
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3135
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3138
    :cond_1
    return-object v7
.end method

.method static getSyncWindowEnd(JJJJ)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 3598
    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    .line 3603
    :cond_0
    :goto_0
    return-wide v0

    .line 3602
    :cond_1
    add-long v0, p6, p4

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v2, p0

    add-long/2addr v0, v2

    .line 3603
    div-long/2addr v0, p2

    mul-long/2addr v0, p2

    goto :goto_0
.end method

.method public static getSyncWindowEnd(Landroid/content/Context;)J
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    .line 3567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3568
    const-string v1, "google_calendar_sync_window_update_days2"

    const-wide/16 v2, 0x1e

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 3571
    mul-long v2, v4, v8

    .line 3572
    const-string v1, "google_calendar_sync_window_days2"

    const-wide/16 v6, 0x16d

    invoke-static {v0, v1, v6, v7}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    add-long/2addr v0, v4

    .line 3577
    long-to-int v4, v4

    .line 3578
    invoke-static {p0, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getDeviceSyncWindowAdjustment(Landroid/content/Context;I)I

    move-result v4

    .line 3579
    int-to-long v4, v4

    mul-long/2addr v4, v8

    .line 3581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getSyncWindowEnd(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTimelySettings(Landroid/accounts/Account;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    const-string v0, "Get Timely Settings"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1144
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1145
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createSettingsListRequest()Lcom/google/api/services/calendar/Calendar$Settings$List;

    move-result-object v2

    .line 1146
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v3, "API: Get Calendar Settings"

    .line 1147
    invoke-virtual {v0, v3, v2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Settings;

    .line 1149
    :goto_0
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Settings;->getNextPageToken()Ljava/lang/String;

    move-result-object v3

    .line 1150
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "settingsList.nextPageToken: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1151
    if-eqz v3, :cond_0

    .line 1152
    invoke-virtual {v2, v3}, Lcom/google/api/services/calendar/Calendar$Settings$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Settings$List;

    .line 1153
    const-string v4, "API: Get Calendar Settings"

    invoke-direct {p0, v4, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V

    .line 1155
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Settings;->getItems()Ljava/util/List;

    move-result-object v0

    .line 1156
    if-eqz v0, :cond_1

    .line 1157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Setting;

    .line 1158
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->processApiSetting(Landroid/accounts/Account;Lcom/google/api/services/calendar/model/Setting;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 1161
    :cond_1
    if-nez v3, :cond_4

    .line 1168
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1176
    const-string v0, "smartMailDelivery"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1177
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getGoogleClientVersionPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "0"

    .line 1179
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1181
    const-string v0, "smartMailDelivery"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1185
    :cond_2
    const-string v0, "DB: settings.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateFromSync(Landroid/accounts/Account;Landroid/content/ContentValues;)Z

    .line 1187
    const-string v0, "DB: settings.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1189
    :cond_3
    const-string v0, "Get Timely Settings"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1190
    return-void

    .line 1164
    :cond_4
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v3, "API: Get Calendar Settings"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Settings;

    goto/16 :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 402
    const-string v0, "com.google.android.calendar"

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->sIsBundledWithApplication:Z

    .line 404
    return-void
.end method

.method private static isAuthenticationException(Lcom/google/api/client/http/HttpResponseException;)Z
    .locals 2

    .prologue
    .line 2632
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNotFoundException(Lcom/google/api/client/http/HttpResponseException;)Z
    .locals 2

    .prologue
    .line 2628
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPermanentException(Lcom/google/api/client/http/HttpResponseException;)Z
    .locals 2

    .prologue
    .line 2636
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v0

    .line 2637
    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSameCalendarData(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 1

    .prologue
    .line 3520
    const-string v0, "name"

    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "calendar_displayName"

    .line 3521
    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "calendar_timezone"

    .line 3522
    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "calendar_color_index"

    .line 3523
    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "calendar_color"

    .line 3524
    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "calendar_access_level"

    .line 3525
    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isPrimary"

    .line 3527
    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cal_sync1"

    .line 3528
    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cal_sync4"

    .line 3529
    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cal_sync5"

    .line 3530
    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cal_sync9"

    .line 3531
    invoke-static {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3520
    :goto_0
    return v0

    .line 3531
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSameValue(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 3536
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3537
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3539
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadEventReminders(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->loadEventReminders(Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static loadEventReminders(Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyStore;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1922
    const-string v0, "DB: notifications.query"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadDefaultNotifications(Ljava/lang/String;Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v2

    .line 1925
    const-string v0, "DB: notifications.query"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1926
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1927
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    .line 1928
    new-instance v6, Lcom/google/api/services/calendar/model/EventReminder;

    invoke-direct {v6}, Lcom/google/api/services/calendar/model/EventReminder;-><init>()V

    .line 1929
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->DEFAULT_METHOD_VALUES_TO_LABELS:Ljava/util/Map;

    .line 1930
    invoke-virtual {v5}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMethod()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1929
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/EventReminder;->setMethod(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventReminder;

    .line 1931
    invoke-virtual {v5}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMinutesBefore()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/EventReminder;->setMinutes(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/EventReminder;

    .line 1932
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1927
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1935
    :cond_0
    return-object v3
.end method

.method private loadGsfColors(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2120
    .line 2121
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 2120
    invoke-static {v0, p1, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2124
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 2125
    if-eqz v0, :cond_0

    .line 2126
    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getColorMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2127
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2131
    :cond_0
    return-void
.end method

.method private logDeletionValues(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V
    .locals 2

    .prologue
    .line 4641
    const-string v0, "Calculate Deletes in Editable Calendars"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 4642
    invoke-static {p2, p1}, Lcom/google/android/syncadapters/calendar/SyncStatsHelper;->getDeletedEventsCountInEditableCalendars(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I

    move-result v0

    .line 4643
    if-lez v0, :cond_0

    .line 4644
    invoke-static {p2, p1}, Lcom/google/android/syncadapters/calendar/SyncStatsHelper;->getEventsCountInEditableCalendars(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I

    move-result v1

    .line 4646
    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->saveDeletionValuesForEditableCalendars(II)V

    .line 4648
    :cond_0
    const-string v0, "Calculate Deletes in Editable Calendars"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 4649
    return-void
.end method

.method private static newInsertColorAsSyncAdapter(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/Integer;)Landroid/content/ContentProviderOperation;
    .locals 3

    .prologue
    .line 2038
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2039
    const-string v1, "account_name"

    iget-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    const-string v1, "account_type"

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    const-string v1, "color_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2042
    const-string v1, "color_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    const-string v1, "color"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2044
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    .line 2045
    invoke-virtual {v1, v2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2046
    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2047
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2044
    return-object v0
.end method

.method private onAfterDownSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9

    .prologue
    .line 867
    iget-object v7, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .line 868
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/SyncHooks;->onAfterDownSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V

    .line 867
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 870
    :cond_0
    return-void
.end method

.method private onAfterUpSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9

    .prologue
    .line 881
    iget-object v7, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .line 882
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/SyncHooks;->onAfterUpSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V

    .line 881
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 884
    :cond_0
    return-void
.end method

.method private onBeforeDownSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9

    .prologue
    .line 860
    iget-object v7, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .line 861
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/SyncHooks;->onBeforeDownSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V

    .line 860
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 863
    :cond_0
    return-void
.end method

.method private onBeforeUpSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9

    .prologue
    .line 874
    iget-object v7, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .line 875
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/SyncHooks;->onBeforeUpSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V

    .line 874
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 877
    :cond_0
    return-void
.end method

.method private onSyncInitiated(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9

    .prologue
    .line 853
    iget-object v7, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .line 854
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/SyncHooks;->onSyncInitiated(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/Calendar;Landroid/content/SyncResult;)V

    .line 853
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 856
    :cond_0
    return-void
.end method

.method private parseDefaultNotifications(Lcom/google/api/services/calendar/model/CalendarListEntry;JLandroid/accounts/Account;Z)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1880
    if-eqz p5, :cond_0

    .line 1881
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getDefaultAllDayReminders()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    .line 1884
    :goto_0
    if-nez v4, :cond_1

    move v1, v2

    .line 1885
    :goto_1
    new-array v5, v1, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move v3, v2

    .line 1886
    :goto_2
    if-ge v3, v1, :cond_3

    .line 1887
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventReminder;

    .line 1888
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReminder;->getMinutes()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1889
    sget-object v7, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->DEFAULT_METHOD_LABELS_TO_VALUES:Ljava/util/Map;

    .line 1890
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReminder;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 1889
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1891
    new-instance v8, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    if-eqz p5, :cond_2

    .line 1892
    const/4 v0, 0x1

    :goto_3
    invoke-direct {v8, v0, v6, v7}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    aput-object v8, v5, v3

    .line 1886
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1882
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getDefaultReminders()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 1884
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1892
    goto :goto_3

    .line 1895
    :cond_3
    const-string v0, "DB: notifications.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1896
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1897
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object v3, p4

    move v4, p5

    .line 1896
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V

    .line 1898
    const-string v0, "DB: notifications.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1899
    return-void
.end method

.method private performSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;,
            Lcom/google/android/syncadapters/calendar/ConscryptInstallationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 596
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "PerformSync for account: %s, with extras: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 599
    invoke-static {p1, p3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    .line 602
    if-nez v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    if-gez v0, :cond_2

    .line 608
    invoke-static {p1, p3, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 610
    const-string v0, "com.android.calendar"

    invoke-static {p1, v0, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 615
    :cond_2
    const-string v0, "initialize"

    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 617
    const-string v1, "sync_extra_get_settings"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 618
    const-string v1, "sync_extra_get_default_notifications"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 619
    const-string v1, "sync_extra_get_recent_notifications"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 620
    const-string v1, "force"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 621
    const-string v1, "upload"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    const-string v1, "com.android.calendar"

    invoke-static {p1, v1, v0}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 623
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v2, v1

    move v0, v6

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 624
    invoke-interface {v3, p1, p4}, Lcom/google/android/syncadapters/calendar/SyncHooks;->onInitializeSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 630
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ConscryptUtils;->installSecurityProvider(Landroid/content/Context;)V

    .line 633
    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createCalendarApiClient(Landroid/accounts/Account;)Lcom/google/api/services/calendar/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 636
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->attemptHookSpecificSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    invoke-direct {p0, p1, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->cleanupForUnsyncedCalendars(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V

    .line 649
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 650
    const-string v0, "com.android.calendar"

    const-string v1, "cl"

    .line 651
    invoke-direct {p0, p4, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getExpectedFeeds(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Ljava/util/HashSet;

    move-result-object v2

    .line 650
    invoke-static {v7, p1, v0, v1, v2}, Lcom/google/android/gsf/SubscribedFeeds;->manageSubscriptions(Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Z

    .line 653
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    const-string v0, "discard_deletions"

    .line 658
    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 659
    if-eqz v0, :cond_4

    .line 660
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 661
    const-string v0, "deleted"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "deleted=1"

    const/4 v5, 0x0

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 670
    :cond_4
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->processUpdateFlags(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    invoke-direct {p0, p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetchTopLevelSyncRequests(Landroid/os/Bundle;)V

    .line 674
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->processNonUpdateFlags(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;)V

    .line 675
    const-string v0, "upload"

    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 676
    if-nez v8, :cond_6

    .line 677
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->onBeforeDownSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 678
    const-string v0, "feed"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "feed_internal"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 680
    :cond_5
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getFeedId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getServerDiffsForFeed(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/os/Bundle;Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 685
    :goto_2
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->onAfterDownSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 686
    invoke-virtual {p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    :cond_6
    const-string v0, "sync_extra_skip_upload"

    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 693
    if-nez v0, :cond_7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, v7

    move-object v5, p5

    .line 694
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->performUpsync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/ContentResolver;Landroid/content/SyncResult;)V

    .line 698
    :cond_7
    invoke-direct {p0, p1, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->setLocalBirthdaySettings(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V

    .line 701
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getFeedId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 702
    if-nez v8, :cond_8

    if-eqz p1, :cond_8

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 704
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 703
    invoke-direct {p0, v0, p1, p4, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getOrCreateSyncState(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v4

    .line 707
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;

    .line 708
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Z)V

    .line 709
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->performConsistencyCheckIfPossible()V

    .line 712
    :cond_8
    const-string v1, "CalendarSyncAdapter"

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "PerformSync: sync is complete"

    .line 713
    :goto_3
    new-array v2, v6, [Ljava/lang/Object;

    .line 712
    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 683
    :cond_9
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getServerDiffsForAccount(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    goto :goto_2

    .line 713
    :cond_a
    const-string v0, "PerformSync: sync is cancelled"

    goto :goto_3
.end method

.method private performVirtualFeedSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3078
    if-nez p2, :cond_0

    .line 3116
    :goto_0
    return v1

    .line 3081
    :cond_0
    const-string v0, "Sync Virtual Feed"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 3084
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "google_calendar_virtual_feed_subscription_sync"

    .line 3083
    invoke-static {v0, v2, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 3088
    const-string v0, "CalendarSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Allow virtual subscriptions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3092
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "_settings"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3093
    const/4 v0, 0x1

    .line 3097
    if-eqz v2, :cond_1

    const-string v2, "just_synced_settings"

    .line 3098
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3099
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getTimelySettings(Landroid/accounts/Account;)V

    .line 3112
    :cond_1
    :goto_2
    const-string v1, "Sync Virtual Feed"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    move v1, v0

    .line 3116
    goto :goto_0

    .line 3092
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3104
    :cond_3
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    const-string v0, "just_synced_settings"

    .line 3105
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3109
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getTimelySettings(Landroid/accounts/Account;)V

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/api/services/calendar/CalendarRequest",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 835
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PARALLEL_ACCOUNT_SYNC_REQUESTS:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/util/concurrent/Future;

    .line 838
    :cond_0
    return-void
.end method

.method private prefetchAclForCalendar(Lcom/google/api/services/calendar/model/CalendarListEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3246
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createAclListRequest(Lcom/google/api/services/calendar/model/CalendarListEntry;)Lcom/google/api/services/calendar/Calendar$Acl$List;

    move-result-object v0

    .line 3247
    const-string v1, "API: Get Calendar Acl"

    invoke-direct {p0, v1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V

    .line 3248
    return-void
.end method

.method private prefetchTopLevelSyncRequests(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    const-string v0, "sync_extra_get_settings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    const-string v0, "API: Get Calendar Settings"

    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createSettingsListRequest()Lcom/google/api/services/calendar/Calendar$Settings$List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V

    .line 823
    :cond_0
    const-string v0, "feed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feed_internal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "upload"

    .line 824
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 825
    const-string v0, "API: Get Calendars List"

    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createCalendarListRequest()Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V

    .line 827
    :cond_1
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SYNC_RECENTS_WITH_SETTINGS:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "sync_extra_get_recent_notifications"

    .line 828
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    const-string v0, "API: Get Recent Notifications"

    .line 830
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createRecentNotificationsGetRequest()Lcom/google/api/services/calendar/Calendar$Settings$Get;

    move-result-object v1

    .line 829
    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V

    .line 832
    :cond_2
    return-void
.end method

.method private processAccountCalendar(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/model/CalendarListEntry;ZLandroid/util/LongSparseArray;Ljava/util/ArrayList;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/os/Bundle;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Lcom/google/api/services/calendar/model/CalendarListEntry;",
            "Z",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncState;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3264
    const-string v2, "Processing calendar"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 3265
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Calendar: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3267
    sget-boolean v2, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->sIsBundledWithApplication:Z

    if-nez v2, :cond_0

    const-string v2, "sync_extra_get_default_notifications"

    .line 3268
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    move v9, v2

    .line 3272
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getAccessRole()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->getAccessLevel(Ljava/lang/String;)I

    move-result v10

    .line 3274
    const/16 v2, 0x2bc

    if-ne v10, v2, :cond_5

    .line 3275
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createAclListRequest(Lcom/google/api/services/calendar/model/CalendarListEntry;)Lcom/google/api/services/calendar/Calendar$Acl$List;

    move-result-object v2

    .line 3276
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v4, "API: Get Calendar Acl"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/calendar/model/Acl;

    .line 3281
    :goto_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3282
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v11}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->calendarEntryToContentValues(Lcom/google/api/services/calendar/model/CalendarListEntry;Lcom/google/api/services/calendar/model/Acl;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    .line 3285
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "account_type=?"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "cal_sync1=?"

    aput-object v8, v6, v7

    .line 3289
    invoke-static {v6}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v12, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v12, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const-string v8, "calendar_access_level"

    move-object/from16 v3, p2

    .line 3285
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3293
    if-eqz v12, :cond_12

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_12

    .line 3296
    const/4 v2, 0x1

    .line 3297
    :cond_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3298
    const/4 v3, 0x1

    .line 3299
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3300
    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3301
    const-string v2, "canPartiallyUpdate"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3302
    const/4 v2, 0x0

    .line 3307
    :cond_2
    if-nez v2, :cond_7

    .line 3308
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3310
    if-eqz v9, :cond_3

    .line 3311
    const-string v2, "Save Default Notifications"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 3312
    const/4 v7, 0x1

    move-object v2, p0

    move-object/from16 v3, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->parseDefaultNotifications(Lcom/google/api/services/calendar/model/CalendarListEntry;JLandroid/accounts/Account;Z)V

    .line 3313
    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->parseDefaultNotifications(Lcom/google/api/services/calendar/model/CalendarListEntry;JLandroid/accounts/Account;Z)V

    .line 3314
    const-string v2, "Save Default Notifications"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 3321
    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3324
    const/4 v2, 0x2

    .line 3325
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 3327
    :goto_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3328
    const-string v6, "calendar_access_level"

    const/4 v7, 0x3

    .line 3329
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3328
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    const-string v6, "isPrimary"

    const/16 v7, 0xf

    .line 3332
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3331
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3334
    const-string v6, "name"

    const/4 v7, 0x6

    .line 3335
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3334
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3336
    const-string v6, "calendar_displayName"

    const/4 v7, 0x7

    .line 3337
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3336
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    const-string v6, "calendar_timezone"

    const/16 v7, 0x8

    .line 3339
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3338
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    const-string v6, "calendar_color_index"

    const/16 v7, 0xa

    .line 3341
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3340
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    const-string v6, "calendar_color"

    const/16 v7, 0x9

    .line 3343
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3342
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3344
    const-string v6, "cal_sync1"

    const/16 v7, 0xb

    .line 3345
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3344
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    const-string v6, "cal_sync4"

    const/16 v7, 0xc

    .line 3347
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3346
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    const-string v6, "cal_sync5"

    const/16 v7, 0xd

    .line 3349
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3348
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    const-string v6, "cal_sync9"

    const/16 v7, 0xe

    .line 3351
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3350
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3353
    invoke-static {v3, v11}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isSameCalendarData(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    .line 3354
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 3356
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object v5, v11

    .line 3354
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3361
    const/4 v2, 0x3

    .line 3362
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 3363
    const-string v3, "calendar_access_level"

    .line 3364
    invoke-virtual {v11, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3366
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "Updating existing calendar %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3367
    invoke-direct {p0, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->shouldResyncCalendar(II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3368
    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3369
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Ljava/lang/String;)V

    .line 3370
    const-string v3, "com.android.calendar"

    move-object/from16 v0, p8

    invoke-static {p1, v3, v0}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3372
    const-string v3, "CalendarSyncAdapter"

    const-string v4, "Access level changed for %s. Requesting full sync"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "CalendarSyncAdapter"

    .line 3373
    invoke-static {v7, v2}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    .line 3372
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3374
    const-string v2, "Processing calendar"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3462
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3498
    :goto_3
    return-void

    .line 3268
    :cond_4
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_0

    .line 3278
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3325
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3385
    :cond_7
    :try_start_1
    const-string v2, "cal_sync4"

    .line 3386
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 3390
    invoke-interface {v12}, Landroid/database/Cursor;->moveToLast()Z

    .line 3392
    const/4 v2, 0x3

    .line 3393
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3394
    const/4 v2, 0x0

    .line 3395
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3397
    const/4 v2, 0x1

    const/4 v3, 0x5

    .line 3398
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    move v9, v2

    .line 3399
    :goto_4
    const/4 v2, 0x1

    const/4 v3, 0x4

    .line 3400
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    move v8, v2

    .line 3405
    :goto_5
    int-to-long v2, v10

    cmp-long v2, v4, v2

    if-ltz v2, :cond_b

    .line 3410
    const-string v2, "sync_events"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3411
    const-string v2, "visible"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3413
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "New feed with lower access level: just need to add it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3449
    :goto_6
    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3450
    const-string v2, "account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    const-string v2, "canPartiallyUpdate"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3452
    const-string v2, "allowedReminders"

    const-string v3, "0,1,2"

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    const-string v2, "allowedAttendeeTypes"

    const-string v3, "0,1,2"

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    const-string v2, "allowedAvailability"

    const-string v3, "0,1"

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    const-string v2, "maxReminders"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3456
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Adding new calendar %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3457
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3462
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3497
    :goto_7
    const-string v2, "Processing calendar"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3398
    :cond_9
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_4

    .line 3400
    :cond_a
    const/4 v2, 0x0

    move v8, v2

    goto :goto_5

    .line 3419
    :cond_b
    if-nez v9, :cond_c

    if-eqz v8, :cond_d

    .line 3420
    :cond_c
    :try_start_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 3421
    const-string v2, "sync_events"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3422
    const-string v2, "visible"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3425
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 3427
    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    .line 3425
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3433
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Updating existing calendar that has lower access level %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3442
    :cond_d
    const-string v3, "sync_events"

    if-nez v9, :cond_e

    if-eqz v13, :cond_10

    .line 3443
    :cond_e
    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3442
    invoke-virtual {v11, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3444
    const-string v3, "visible"

    if-nez v8, :cond_f

    if-eqz v13, :cond_11

    .line 3445
    :cond_f
    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3444
    invoke-virtual {v11, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3446
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "New feed with higher access level: swapped visible and sync status"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 3462
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3443
    :cond_10
    const/4 v2, 0x0

    goto :goto_8

    .line 3445
    :cond_11
    const/4 v2, 0x0

    goto :goto_9

    .line 3466
    :cond_12
    if-eqz v12, :cond_13

    .line 3467
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3475
    :cond_13
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "com.android.calendar"

    .line 3476
    invoke-static {p1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    .line 3478
    :goto_a
    if-nez p4, :cond_14

    .line 3479
    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/CalendarListEntry;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_15

    :cond_14
    if-eqz p4, :cond_17

    .line 3481
    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getSelected()Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3482
    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getHidden()Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v2, :cond_17

    :cond_15
    const/4 v2, 0x1

    .line 3484
    :goto_b
    const-string v4, "sync_events"

    if-eqz v2, :cond_18

    const/4 v3, 0x1

    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3485
    const-string v3, "visible"

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3486
    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    const-string v2, "account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    const-string v2, "canPartiallyUpdate"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3489
    const-string v2, "allowedReminders"

    const-string v3, "0,1,2"

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    const-string v2, "allowedAttendeeTypes"

    const-string v3, "0,1,2"

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    const-string v2, "allowedAvailability"

    const-string v3, "0,1"

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3492
    const-string v2, "maxReminders"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3493
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Adding new calendar %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3494
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 3476
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 3482
    :cond_17
    const/4 v2, 0x0

    goto :goto_b

    .line 3484
    :cond_18
    const/4 v3, 0x0

    goto :goto_c

    .line 3485
    :cond_19
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private processAccountCalendars(Landroid/accounts/Account;Landroid/content/ContentProviderClient;ZLandroid/util/LongSparseArray;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/os/Bundle;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Z",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncState;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3162
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3164
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createCalendarListRequest()Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v10

    .line 3167
    :cond_0
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v2, "API: Get Calendars List"

    .line 3168
    invoke-virtual {v1, v2, v10}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/CalendarList;

    .line 3170
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/CalendarList;->getNextPageToken()Ljava/lang/String;

    move-result-object v11

    .line 3171
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "calendarList.nextPageToken: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3172
    if-eqz v11, :cond_1

    .line 3173
    invoke-virtual {v10, v11}, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    .line 3174
    const-string v2, "API: Get Calendars List"

    invoke-direct {p0, v2, v10}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V

    .line 3176
    :cond_1
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/CalendarList;->getItems()Ljava/util/List;

    move-result-object v12

    .line 3177
    if-eqz v12, :cond_8

    .line 3178
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3181
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 3182
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getAccessRole()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->getAccessLevel(Ljava/lang/String;)I

    move-result v4

    .line 3183
    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_2

    .line 3184
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3186
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3190
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 3191
    invoke-direct {p0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetchAclForCalendar(Lcom/google/api/services/calendar/model/CalendarListEntry;)V

    goto :goto_1

    .line 3193
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 3194
    invoke-direct/range {v1 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->processAccountCalendar(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/model/CalendarListEntry;ZLandroid/util/LongSparseArray;Ljava/util/ArrayList;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3204
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 3205
    invoke-direct/range {v1 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->processAccountCalendar(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/api/services/calendar/model/CalendarListEntry;ZLandroid/util/LongSparseArray;Ljava/util/ArrayList;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/os/Bundle;)V

    goto :goto_3

    .line 3217
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3218
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Bulk inserting %d rows"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3219
    invoke-static/range {p1 .. p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 3222
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    .line 3219
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->bulkInsert(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 3223
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Inserted %d rows"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3224
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3228
    :cond_7
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v12}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateCalendarsSettings(Landroid/accounts/Account;Ljava/util/List;)V

    .line 3231
    :cond_8
    if-nez v11, :cond_0

    .line 3236
    const-string v1, "sync_extra_get_default_notifications"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3237
    return-void
.end method

.method private processApiSetting(Landroid/accounts/Account;Lcom/google/api/services/calendar/model/Setting;Landroid/content/ContentValues;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1204
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Setting;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1205
    if-nez v4, :cond_1

    .line 1206
    const-string v1, "CalendarSyncAdapter"

    const-string v3, "Found setting with no id: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Setting;->toPrettyString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v1, v3, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Setting;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1211
    const-string v1, "CalendarSyncAdapter"

    const-string v6, "Retrieved setting: %s = %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v0

    aput-object v5, v7, v2

    invoke-static {v1, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1215
    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1230
    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->apiaryToLocalSettingField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    if-eqz v0, :cond_0

    .line 1233
    invoke-static {v0, v5}, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->apiaryToLocalSettingValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1215
    :sswitch_0
    const-string v2, "googleClientVersion"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :sswitch_1
    const-string v0, "smartMailAck"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "goocal.recentreminders"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    .line 1217
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getGoogleClientVersionPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1219
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1222
    :pswitch_1
    invoke-direct {p0, p1, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyServerSmartmailAckValue(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 1225
    :pswitch_2
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SYNC_RECENTS_WITH_SETTINGS:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {p0, p1, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->saveRecentNotifications(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 1215
    nop

    :sswitch_data_0
    .sparse-switch
        -0x136483c1 -> :sswitch_2
        0x1742a949 -> :sswitch_1
        0x18d86cd4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processLocalChangesForHandler(JZLandroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/SyncResult;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JZ",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;",
            "Landroid/content/SyncResult;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/ParseException;,
            Lcom/google/android/apiary/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 3973
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    int-to-long v2, v8

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    .line 3974
    invoke-static/range {p7 .. p7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getNumChanges(Landroid/content/SyncResult;)J

    move-result-wide v10

    .line 3976
    invoke-static/range {p7 .. p7}, Lcom/google/android/calendar/SyncUtil;->backUpSyncStats(Landroid/content/SyncResult;)Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;

    move-result-object v9

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move/from16 v7, p3

    .line 3977
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->processLocalChanges(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/SyncResult;Lcom/google/android/apiary/ItemAndEntityHandler;Z)V

    .line 3979
    invoke-static/range {p7 .. p7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getNumChanges(Landroid/content/SyncResult;)J

    move-result-wide v2

    .line 3980
    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    .line 3981
    const/4 v2, 0x1

    move-object/from16 v0, p7

    invoke-static {v0, v9, v2}, Lcom/google/android/calendar/SyncUtil;->restoreSyncStats(Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;Z)V

    .line 3982
    add-int/lit8 v2, v8, 0x1

    .line 3985
    :goto_1
    return v2

    .line 3973
    :cond_0
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 3985
    :cond_1
    long-to-int v2, p1

    goto :goto_1
.end method

.method private processNonUpdateFlags(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 942
    if-nez p2, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    const-string v0, "sync_extra_get_settings"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 947
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getTimelySettings(Landroid/accounts/Account;)V

    .line 948
    const-string v0, "sync_extra_get_settings"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 950
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->DEDUPLICATE_SETTINGS_SYNC:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 951
    const-string v0, "just_synced_settings"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 953
    :cond_2
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->SYNC_RECENTS_WITH_SETTINGS:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 954
    const-string v0, "sync_extra_get_recent_notifications"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 958
    :cond_3
    const-string v0, "sync_extra_get_recent_notifications"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 959
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getRecentNotifications(Landroid/accounts/Account;)V

    .line 960
    const-string v0, "sync_extra_get_recent_notifications"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 963
    :cond_4
    const-string v0, "sync_extra_get_default_notifications"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    const-string v0, "feed"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "feed_internal"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "upload"

    .line 967
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getDefaultNotifications(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V

    .line 969
    const-string v0, "sync_extra_get_default_notifications"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processUpdateFlags(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 899
    if-nez p2, :cond_1

    .line 932
    :cond_0
    :goto_0
    return v0

    .line 903
    :cond_1
    const-string v2, "sync_extra_sync_timely_data"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 904
    invoke-direct {p0, p1, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->restoreTimelyEventData(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V

    move v0, v1

    .line 905
    goto :goto_0

    .line 908
    :cond_2
    const-string v2, "sync_extra_update_client_status"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 909
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateGoogleClientStatus(Landroid/accounts/Account;)V

    move v0, v1

    .line 910
    goto :goto_0

    .line 913
    :cond_3
    const-string v2, "sync_extra_update_settings"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 914
    invoke-direct {p0, p1, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateTimelySettings(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V

    move v0, v1

    .line 915
    goto :goto_0

    .line 918
    :cond_4
    const-string v2, "sync_extra_update_recent_notifications"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 919
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateRecentNotifications(Landroid/accounts/Account;)V

    move v0, v1

    .line 920
    goto :goto_0

    .line 923
    :cond_5
    const-string v2, "sync_extra_update_default_notifications"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 924
    const-string v0, "sync_extra_local_calendar_id"

    .line 926
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sync_extra_server_calendar_id"

    .line 927
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sync_extra_all_day"

    .line 928
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 924
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateDefaultNotifications(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    .line 929
    goto :goto_0
.end method

.method private removeCalendars(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/util/LongSparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 2605
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move v1, v2

    .line 2606
    :goto_0
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2607
    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 2610
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    const-string v6, "_id = ? AND (cal_sync2 IS NULL OR cal_sync2 NOT LIKE \'%subscribe%\' OR dirty = 0 OR dirty IS NULL)"

    new-array v7, v9, [Ljava/lang/String;

    .line 2614
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 2610
    invoke-virtual {v0, p1, v3, v6, v7}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->delete(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2618
    if-lez v0, :cond_0

    .line 2619
    iget-object v6, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, p2, v4, v5, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->removeDataForCalendar(Landroid/accounts/Account;JLjava/lang/String;)V

    .line 2620
    const-string v0, "CalendarSyncAdapter"

    const-string v6, "Deleted zombie calendar %d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v0, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2606
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2622
    :cond_0
    const-string v0, "CalendarSyncAdapter"

    const-string v6, "Kept calendar pending subscription %d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v0, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 2625
    :cond_1
    return-void
.end method

.method private removeFromCalendarList(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1569
    invoke-static {p2, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getIfAvailable(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v0

    .line 1570
    if-eqz v0, :cond_0

    .line 1571
    invoke-virtual {v0, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v1

    .line 1572
    if-eqz v1, :cond_0

    .line 1573
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/FeedState;->clear()V

    .line 1574
    invoke-virtual {v0, p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 1579
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v1, "API: Delete Calendar"

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 1580
    invoke-virtual {v2}, Lcom/google/api/services/calendar/Calendar;->calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/api/services/calendar/Calendar$CalendarList;->delete(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$Delete;

    move-result-object v2

    .line 1579
    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    :cond_1
    return-void

    .line 1581
    :catch_0
    move-exception v0

    .line 1584
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_1

    .line 1587
    throw v0
.end method

.method private repairWrongDefaults(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/EventHandler;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 4191
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cal_sync1=?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dirty=0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lastSynced=0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "(guestsCanInviteOthers=0 OR guestsCanSeeGuests=0)"

    aput-object v2, v0, v1

    .line 4192
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, -0x1

    .line 4191
    invoke-virtual {p4, v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->newEntityIterator(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/EntityIterator;
    :try_end_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 4200
    :try_start_1
    new-instance v5, Landroid/content/SyncResult;

    invoke-direct {v5}, Landroid/content/SyncResult;-><init>()V

    .line 4201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4202
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4203
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 4204
    invoke-virtual {v3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 4205
    const-string v2, "_sync_id"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4207
    :try_start_2
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v4, "API: Get Event"

    iget-object v6, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 4208
    invoke-virtual {v6}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v6

    invoke-virtual {v6, p3, v0}, Lcom/google/api/services/calendar/Calendar$Events;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v0

    .line 4209
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/api/services/calendar/Calendar$Events$Get;->setMaxAttendees(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v0

    .line 4207
    invoke-virtual {v2, v4, v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/calendar/model/Event;

    .line 4210
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->applyItemToEntity(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;ZLandroid/content/SyncResult;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4219
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4220
    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 4221
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Repairing %d events"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4222
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4231
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    throw v0
    :try_end_4
    .catch Lcom/google/android/apiary/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4233
    :catch_0
    move-exception v0

    .line 4234
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Failed to repair events on upgrade."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4236
    :goto_1
    return-void

    .line 4212
    :catch_1
    move-exception v0

    .line 4216
    :try_start_5
    const-string v2, "Failed to resync event"

    invoke-static {v0, v3, v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Landroid/content/Entity;Ljava/lang/String;)V

    goto :goto_0

    .line 4225
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4226
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 4227
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Repairing %d events"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4228
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4231
    :cond_2
    :try_start_6
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V
    :try_end_6
    .catch Lcom/google/android/apiary/ParseException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method private static requestMetaFeedSync(Landroid/accounts/Account;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1063
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1064
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1065
    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1066
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1067
    return-void
.end method

.method private static requestSingleFeedSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1043
    if-nez p1, :cond_0

    .line 1044
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Not requesting sync for null feed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1060
    :goto_0
    return-void

    .line 1047
    :cond_0
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Requesting sync for feed %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1049
    if-nez p2, :cond_1

    .line 1050
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1052
    :cond_1
    const-string v0, "feed_internal"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    if-eqz p3, :cond_2

    .line 1054
    const-string v0, "sync_extra_skip_upload"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1056
    :cond_2
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->isPendingAccountSync(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1057
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->addPendingSync(Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 1059
    :cond_3
    const-string v0, "com.android.calendar"

    invoke-static {p0, v0, p2}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3905
    invoke-virtual {p1, p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v0

    .line 3906
    if-eqz v0, :cond_0

    .line 3907
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/FeedState;->clear()V

    .line 3909
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 3910
    return-void
.end method

.method private restoreTimelyEventData(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 4249
    invoke-static/range {p1 .. p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v4

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "ownerAccount"

    aput-object v8, v7, v5

    const-string v8, "sync_events=?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "1"

    aput-object v10, v9, v5

    const/4 v10, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4256
    if-eqz v13, :cond_a

    .line 4260
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 4261
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 4262
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 4263
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 4266
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 4267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getRestoreTimelyDataKey(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 4268
    if-nez v4, :cond_0

    .line 4273
    invoke-static/range {p1 .. p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v4

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_sync_id"

    aput-object v8, v7, v5

    const-string v8, "((sync_data9 & 51) != 0) AND calendar_id=? AND lastSynced=0"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v9, v5

    const/4 v10, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 4280
    if-eqz v17, :cond_6

    .line 4282
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_1

    .line 4320
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4332
    :catchall_0
    move-exception v4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v4

    .line 4286
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v4, v14, v15}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getSyncIdsForCalendar(J)Ljava/util/Set;

    move-result-object v18

    .line 4287
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4290
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4293
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4315
    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4316
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4317
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4320
    :cond_5
    :try_start_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 4324
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 4326
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 4327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getRestoreTimelyDataKey(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 4328
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 4298
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v7, "API: Get Event"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 4300
    invoke-virtual {v8}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v4}, Lcom/google/api/services/calendar/Calendar$Events;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v4

    .line 4298
    invoke-virtual {v5, v7, v4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/api/services/calendar/model/Event;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide v10, v14

    .line 4302
    invoke-direct/range {v5 .. v12}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->saveTimelyDataForEvent(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;Landroid/accounts/Account;Landroid/content/ContentProviderClient;JLjava/lang/String;)V
    :try_end_5
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 4304
    :catch_0
    move-exception v4

    .line 4305
    :try_start_6
    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isNotFoundException(Lcom/google/api/client/http/HttpResponseException;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v7, "restoreTimelyEventData"

    .line 4308
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v8

    .line 4307
    invoke-virtual {v5, v7, v8}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;I)V

    .line 4309
    const-string v5, "Cannot restore timely data"

    invoke-static {v4, v5}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 4320
    :catchall_1
    move-exception v4

    :try_start_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4312
    :cond_8
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4332
    :cond_9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4335
    :cond_a
    return-void
.end method

.method private saveTimelyDataForEvent(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;Landroid/accounts/Account;Landroid/content/ContentProviderClient;JLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/google/api/services/calendar/model/Event;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4414
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>()V

    .line 4415
    invoke-static {p2, v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->apiaryEventToTimelyExtras(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)V

    .line 4416
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->hasTimelyData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4417
    const-string v1, "DB: timelyData.update"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 4418
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p5, p6, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->insertOrUpdateEventData(Ljava/lang/String;JLcom/google/android/syncadapters/calendar/timely/TimelyEventData;)Landroid/net/Uri;

    .line 4420
    const-string v1, "DB: timelyData.update"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 4423
    invoke-static {p3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 4424
    invoke-static {p2, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContentValue(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "_sync_id=?"

    aput-object v2, v1, v4

    const-string v2, "calendar_id=?"

    aput-object v2, v1, v5

    .line 4425
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    .line 4427
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p7, v2, v5

    .line 4425
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 4428
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 4423
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4430
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 4431
    invoke-virtual {p0, p4, p3, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 4432
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4435
    :cond_0
    return-void
.end method

.method static selectServerSyncMode(ZJLcom/google/android/syncadapters/calendar/FeedState;)I
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3625
    invoke-virtual {p3}, Lcom/google/android/syncadapters/calendar/FeedState;->getDoIncrementalSync()Z

    move-result v3

    .line 3626
    invoke-virtual {p3}, Lcom/google/android/syncadapters/calendar/FeedState;->getWindowEnd()J

    move-result-wide v4

    .line 3627
    invoke-virtual {p3}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpdatedTime()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3628
    invoke-virtual {p3}, Lcom/google/android/syncadapters/calendar/FeedState;->getIdOfLastFetchedEvent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    .line 3629
    :goto_0
    if-nez v2, :cond_2

    .line 3630
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Sync mode: No last updated time present for feed, preparing for full sync"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3660
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 3628
    goto :goto_0

    .line 3633
    :cond_2
    if-eqz v3, :cond_7

    .line 3635
    cmp-long v2, p1, v6

    if-gtz v2, :cond_3

    .line 3636
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Sync mode: No sliding window defined"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 3637
    goto :goto_1

    .line 3638
    :cond_3
    if-eqz p0, :cond_5

    .line 3639
    invoke-virtual {p3}, Lcom/google/android/syncadapters/calendar/FeedState;->getMoveWindowEnd()J

    move-result-wide v2

    .line 3640
    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 3641
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Sync mode: Already moving the sync window.  Ignoring request."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 3643
    goto :goto_1

    .line 3647
    :cond_4
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Sync mode: Moving the sliding window to %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3648
    const/4 v0, 0x3

    goto :goto_1

    .line 3650
    :cond_5
    cmp-long v2, p1, v4

    if-lez v2, :cond_6

    .line 3651
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Sync mode: Scheduling sliding window move from %d to %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 3652
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v1

    .line 3651
    invoke-static {v2, v3, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3653
    const/4 v0, 0x4

    goto :goto_1

    .line 3655
    :cond_6
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Sync mode: default incremental sync"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 3656
    goto :goto_1

    .line 3659
    :cond_7
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Sync mode: continuing full sync"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 3660
    goto :goto_1
.end method

.method private static sendEntityToServer(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Entity;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Landroid/content/Entity;",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;",
            "Landroid/content/SyncResult;",
            "Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/ParseException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4078
    invoke-virtual {p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 4079
    const-string v1, "original_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "original_id"

    .line 4080
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4081
    const-string v1, "original_sync_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4082
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4104
    :cond_0
    :goto_0
    return-void

    .line 4091
    :cond_1
    invoke-interface {p3, p2, p4}, Lcom/google/android/apiary/ItemAndEntityHandler;->sendEntityToServer(Landroid/content/Entity;Landroid/content/SyncResult;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4092
    if-eqz v1, :cond_0

    .line 4093
    new-array v0, v5, [Landroid/content/ContentProviderResult;

    .line 4095
    :try_start_0
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->applyBatch(Landroid/content/ContentProviderClient;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4100
    :goto_1
    const-string v1, "CalendarSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4101
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "results are: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 4096
    :catch_0
    move-exception v1

    .line 4097
    invoke-static {p4, p5, v5}, Lcom/google/android/calendar/SyncUtil;->restoreSyncStats(Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;Z)V

    .line 4098
    const-string v2, "error applying batch"

    invoke-static {v1, v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static serializeReminderList(Ljava/lang/StringBuilder;[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1795
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1815
    :cond_0
    return-void

    .line 1800
    :cond_1
    array-length v5, p1

    move v3, v2

    move v0, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, p1, v3

    .line 1801
    if-eqz v0, :cond_3

    move v1, v2

    .line 1806
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMinutesBefore()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1807
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->METHOD_VALUES_TO_LABELS:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMethod()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1809
    if-nez v0, :cond_2

    .line 1810
    const-string v0, "CalendarSyncAdapter"

    const-string v7, "Will substitute method %d with ALERT"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMethod()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-static {v0, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1811
    const-string v0, "ALERT"

    .line 1813
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_0

    .line 1804
    :cond_3
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_1
.end method

.method private setLocalBirthdaySettings(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1599
    .line 1603
    :try_start_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "ownerAccount"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "((ownerAccount = \'#contacts@group.v.calendar.google.com\') OR (ownerAccount = \'addressbook#contacts@group.v.calendar.google.com\'))"

    aput-object v5, v1, v4

    .line 1607
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p2

    .line 1603
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1610
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1611
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1612
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->isBirthdayCalendar(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/apiary/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    .line 1623
    :goto_0
    if-eqz v1, :cond_0

    .line 1624
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1628
    :cond_0
    :goto_1
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-direct {v1, v0}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;-><init>(I)V

    .line 1629
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1630
    const-string v3, "settingBirthdayVisibility"

    .line 1631
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1630
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1632
    const-string v0, "settingBirthdayIncludeGplus"

    .line 1633
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getIncludeGplusBirthday()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1632
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1634
    const-string v0, "DB: settings.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateFromSync(Landroid/accounts/Account;Landroid/content/ContentValues;)Z

    .line 1636
    const-string v0, "DB: settings.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1637
    return-void

    :cond_1
    move v0, v9

    .line 1615
    goto :goto_0

    .line 1618
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 1619
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1623
    if-eqz v1, :cond_5

    .line 1624
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_1

    .line 1620
    :catch_1
    move-exception v0

    .line 1621
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/apiary/ParseException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1623
    if-eqz v10, :cond_5

    .line 1624
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_1

    .line 1623
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v10, :cond_2

    .line 1624
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v9

    .line 1631
    goto :goto_2

    :cond_4
    move v8, v9

    .line 1633
    goto :goto_3

    .line 1623
    :catchall_1
    move-exception v0

    move-object v10, v1

    goto :goto_6

    .line 1620
    :catch_2
    move-exception v0

    move-object v10, v1

    goto :goto_5

    .line 1618
    :catch_3
    move-exception v0

    goto :goto_4

    :cond_5
    move v0, v7

    goto :goto_1

    :cond_6
    move v0, v7

    goto :goto_0
.end method

.method private setupHooks()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 408
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Lcom/google/android/syncadapters/calendar/SyncHooks;

    const/4 v3, 0x0

    const-string v0, "com.google.android.syncadapters.calendar.timely.GrooveSync"

    .line 409
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/SyncHooks;

    aput-object v0, v2, v3

    iput-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    :goto_0
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    .line 418
    invoke-interface {v1, p0}, Lcom/google/android/syncadapters/calendar/SyncHooks;->initialize(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;)V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 411
    :catch_0
    move-exception v0

    .line 415
    :goto_2
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Could not install GrooveSync hooks."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 420
    :cond_0
    return-void

    .line 411
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private shouldResyncCalendar(II)Z
    .locals 4

    .prologue
    const/16 v3, 0x258

    const/16 v2, 0x64

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2748
    if-ne p1, p2, :cond_1

    .line 2765
    :cond_0
    :goto_0
    return v0

    .line 2752
    :cond_1
    if-eq p1, v2, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    move v0, v1

    .line 2754
    goto :goto_0

    .line 2758
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 2759
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v2, v3, :cond_0

    move v0, v1

    .line 2760
    goto :goto_0
.end method

.method private skipEntry(Ljava/lang/String;Ljava/util/List;ILjava/lang/Throwable;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;I",
            "Ljava/lang/Throwable;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;",
            "Lcom/google/api/services/calendar/model/Event;",
            "Landroid/content/Entity;",
            "Landroid/content/SyncResult;",
            "Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3889
    invoke-static {p4, p5, p6, p7, p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;Ljava/lang/String;)V

    .line 3891
    const/4 v0, 0x0

    invoke-static {p8, p9, v0}, Lcom/google/android/calendar/SyncUtil;->restoreSyncStats(Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;Z)V

    .line 3892
    iget-object v0, p8, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 3894
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 3896
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3898
    :cond_0
    return-void
.end method

.method public static subscribeCalendar(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 980
    const-string v0, "ownerAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 982
    invoke-static {v6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    :goto_0
    return-void

    .line 988
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 989
    const-string v0, "sync_events"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 990
    const-string v0, "visible"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 991
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v1, v9, [Ljava/lang/String;

    const-string v4, "ownerAccount=?"

    aput-object v4, v1, v8

    const-string v4, "account_name=?"

    aput-object v4, v1, v7

    .line 995
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v5, v7

    move-object v1, p2

    .line 991
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 998
    if-lez v0, :cond_2

    .line 1000
    if-le v0, v7, :cond_1

    .line 1001
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Updated %d entries for calendar %s on account %s"

    new-array v3, v10, [Ljava/lang/Object;

    .line 1002
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    const-string v0, "CalendarSyncAdapter"

    invoke-static {v0, v6}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const-string v0, "CalendarSyncAdapter"

    iget-object v4, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1003
    invoke-static {v0, v4}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    .line 1001
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1008
    :goto_1
    invoke-static {p0, v6, v11, v8}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->requestSingleFeedSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1005
    :cond_1
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Updated calendar %s on account %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v6, v2, v8

    iget-object v3, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1018
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1019
    const-string v1, "account_name"

    iget-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string v1, "account_type"

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v1, "name"

    const-string v2, "name"

    .line 1022
    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v1, "calendar_displayName"

    const-string v2, "calendar_displayName"

    .line 1024
    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1023
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string v1, "calendar_color_index"

    const-string v2, "calendar_color_index"

    .line 1026
    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1025
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    const-string v1, "calendar_access_level"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    const-string v1, "ownerAccount"

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v1, "sync_events"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    const-string v1, "visible"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1031
    const-string v1, "dirty"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "subscribe"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/Utils;->setSyncFlags(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 1034
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 1035
    invoke-virtual {v1, p2, v2, v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->insert(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1036
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Inserted %s for %s on %s"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object v6, v3, v7

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1038
    invoke-static {p0, v6, v11, v8}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->requestSingleFeedSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_0
.end method

.method public static unsubscribeCalendar(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1086
    const-string v0, "ownerAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1093
    invoke-static {v10}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1100
    :cond_0
    const-wide/16 v8, 0x0

    .line 1102
    :try_start_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ownerAccount=?"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "account_name=?"

    aput-object v5, v1, v4

    .line 1106
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v5, v1

    const/4 v1, 0x1

    iget-object v6, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p2

    .line 1102
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1109
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Could not find calendar to unsubscribe: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "CalendarSyncAdapter"

    .line 1111
    invoke-static {v5, v10}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1110
    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/apiary/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1121
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1115
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/apiary/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 1121
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-wide v4, v0

    .line 1124
    :goto_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1125
    const-string v0, "dirty"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1126
    const-string v0, "deleted"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1127
    const-string v0, "sync_events"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1128
    const-string v0, "visible"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1129
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "unsubscribe"

    aput-object v1, v0, v11

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/Utils;->setSyncFlags(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 1130
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 1132
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v1, p2

    move-object v4, v7

    move-object v5, v7

    .line 1130
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1116
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 1117
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v4, v8

    .line 1122
    goto :goto_1

    .line 1118
    :catch_1
    move-exception v0

    move-object v2, v7

    .line 1119
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/apiary/ParseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1121
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-wide v4, v8

    .line 1122
    goto :goto_1

    .line 1121
    :catchall_0
    move-exception v0

    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v7, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 1118
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1116
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private updateCalendarsFromServerFeed(Landroid/accounts/Account;Landroid/content/ContentProviderClient;ZLcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/ParseException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2571
    .line 2572
    invoke-direct {p0, p2, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getStoredCalendarsForAccount(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Landroid/util/LongSparseArray;

    move-result-object v4

    .line 2574
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v7

    .line 2575
    const/high16 v0, 0x1000000

    or-int v8, v7, v0

    .line 2576
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2578
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->processAccountCalendars(Landroid/accounts/Account;Landroid/content/ContentProviderClient;ZLandroid/util/LongSparseArray;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2594
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 2596
    invoke-static {v7}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2599
    invoke-direct {p0, p2, p1, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->removeCalendars(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/util/LongSparseArray;)V

    .line 2600
    :goto_0
    return-void

    .line 2580
    :catch_0
    move-exception v0

    .line 2583
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2594
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v8, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 2596
    invoke-static {v7}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0

    .line 2584
    :catch_1
    move-exception v0

    .line 2585
    :try_start_2
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Unable to get calendar account"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2586
    if-eqz p3, :cond_0

    .line 2589
    throw v0

    .line 2591
    :cond_0
    iget-object v0, p6, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2594
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 2596
    invoke-static {v7}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_0
.end method

.method private updateColorsInProvider(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 4133
    const-string v0, "Update Colors in Provider"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 4134
    iget-object v6, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAccountsWithColors:Ljava/util/Set;

    monitor-enter v6

    .line 4135
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColors:Ljava/util/Map;

    sget-object v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColorsGsf:Ljava/util/Map;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateColorsInProvider(Landroid/content/ContentProviderClient;Landroid/accounts/Account;ILjava/util/Map;Ljava/util/Map;)V

    .line 4137
    const/4 v3, 0x1

    sget-object v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColors:Ljava/util/Map;

    sget-object v5, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColorsGsf:Ljava/util/Map;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateColorsInProvider(Landroid/content/ContentProviderClient;Landroid/accounts/Account;ILjava/util/Map;Ljava/util/Map;)V

    .line 4139
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAccountsWithColors:Ljava/util/Set;

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4140
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4141
    const-string v0, "Update Colors in Provider"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 4142
    return-void

    .line 4140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateColorsInProvider(Landroid/content/ContentProviderClient;Landroid/accounts/Account;ILjava/util/Map;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 1950
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 1951
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v3

    sget-object v5, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "color_index"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "color"

    aput-object v7, v6, v4

    sget-object v7, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_COLOR_TYPE:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v8, v4

    const/4 v4, 0x1

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v8, v4

    const/4 v4, 0x2

    aput-object v15, v8, v4

    const-string v9, "color_index"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1958
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1960
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 1961
    if-eqz v16, :cond_3

    .line 1963
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1964
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1965
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1966
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1967
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1968
    if-nez v4, :cond_7

    .line 1969
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v9, v4

    .line 1971
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v5, v4, :cond_0

    .line 1972
    const-string v4, "CalendarSyncAdapter"

    const-string v6, "Updating color %d for type %d to %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 1973
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v10

    const/4 v5, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    const/4 v5, 0x2

    aput-object v9, v7, v5

    .line 1972
    invoke-static {v4, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1984
    const-string v4, "temp-"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1988
    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v7, v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->newInsertColorAsSyncAdapter(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/Integer;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 1987
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    .line 1991
    invoke-static/range {v3 .. v8}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterUpdateObjectsColorOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)V

    .line 1996
    invoke-static/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_COLOR:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    aput-object v15, v6, v10

    const/4 v10, 0x3

    aput-object v8, v6, v10

    .line 1997
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 2000
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 1995
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2004
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->newInsertColorAsSyncAdapter(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/Integer;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 2003
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v3

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-object v13, v8

    move-object v14, v7

    .line 2007
    invoke-static/range {v9 .. v14}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterUpdateObjectsColorOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)V

    .line 2012
    invoke-static/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_COLOR:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v6, v8

    const/4 v8, 0x2

    aput-object v15, v6, v8

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 2013
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 2016
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 2011
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2020
    :catchall_0
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1984
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2020
    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2023
    :cond_3
    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2024
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2025
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2026
    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2027
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v8, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object/from16 v4, p0

    move-object v5, v3

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, v17

    .line 2030
    invoke-direct/range {v4 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addMissingColors(Ljava/util/ArrayList;Landroid/accounts/Account;ILjava/util/Map;Ljava/util/Set;)V

    .line 2031
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 2032
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 2034
    :cond_6
    return-void

    :cond_7
    move-object v9, v4

    goto/16 :goto_1
.end method

.method private updateDefaultNotifications(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1903
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->loadEventReminders(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 1905
    new-instance v2, Lcom/google/api/services/calendar/model/CalendarListEntry;

    invoke-direct {v2}, Lcom/google/api/services/calendar/model/CalendarListEntry;-><init>()V

    .line 1906
    if-eqz p4, :cond_1

    .line 1908
    if-nez p4, :cond_0

    const/4 v0, 0x1

    .line 1909
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->loadEventReminders(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 1910
    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->setDefaultReminders(Ljava/util/List;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 1911
    invoke-virtual {v2, v1}, Lcom/google/api/services/calendar/model/CalendarListEntry;->setDefaultAllDayReminders(Ljava/util/List;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 1915
    :goto_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v1, "API: Update Calendar"

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v3}, Lcom/google/api/services/calendar/Calendar;->calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;

    move-result-object v3

    .line 1916
    invoke-virtual {v3, p3, v2}, Lcom/google/api/services/calendar/Calendar$CalendarList;->update(Ljava/lang/String;Lcom/google/api/services/calendar/model/CalendarListEntry;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    move-result-object v2

    .line 1917
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;->setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    move-result-object v2

    .line 1915
    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    .line 1918
    return-void

    .line 1908
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1913
    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/api/services/calendar/model/CalendarListEntry;->setDefaultReminders(Ljava/util/List;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    goto :goto_1
.end method

.method private updateGoogleClientStatus(Landroid/accounts/Account;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1311
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "updateGoogleClientStatus(%s)"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1313
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1315
    :try_start_0
    const-string v0, "1"

    .line 1316
    new-instance v2, Lcom/google/api/services/calendar/model/Setting;

    invoke-direct {v2}, Lcom/google/api/services/calendar/model/Setting;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/Setting;->setValue(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v2

    .line 1317
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v4, "API: Update Calendar Setting"

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v5}, Lcom/google/api/services/calendar/Calendar;->settings()Lcom/google/api/services/calendar/Calendar$Settings;

    move-result-object v5

    const-string v6, "googleClientVersion"

    .line 1318
    invoke-virtual {v5, v6, v2}, Lcom/google/api/services/calendar/Calendar$Settings;->update(Ljava/lang/String;Lcom/google/api/services/calendar/model/Setting;)Lcom/google/api/services/calendar/Calendar$Settings$Update;

    move-result-object v2

    .line 1317
    invoke-virtual {v3, v4, v2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    .line 1322
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getGoogleClientVersionPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 1324
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1325
    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :goto_0
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getSmartmailAckPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 1334
    const/4 v2, 0x5

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1335
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Smartmail ack = %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1336
    packed-switch v0, :pswitch_data_0

    .line 1362
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Unexpected ack value in prefs: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1365
    :goto_1
    :pswitch_0
    return-void

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v3, "updateGoogleClientVersion"

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;I)V

    .line 1329
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "HttpResponseException while writing googleClientVersion for account %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1339
    :pswitch_1
    :try_start_1
    new-instance v0, Lcom/google/api/services/calendar/model/Setting;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Setting;-><init>()V

    const-string v1, "ACKNOWLEDGED"

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Setting;->setValue(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v0

    .line 1340
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/Calendar;->settings()Lcom/google/api/services/calendar/Calendar$Settings;

    move-result-object v1

    const-string v2, "smartMailAck"

    .line 1341
    invoke-virtual {v1, v2, v0}, Lcom/google/api/services/calendar/Calendar$Settings;->update(Ljava/lang/String;Lcom/google/api/services/calendar/model/Setting;)Lcom/google/api/services/calendar/Calendar$Settings$Update;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Lcom/google/api/services/calendar/Calendar$Settings$Update;->execute()Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1343
    :catch_1
    move-exception v0

    .line 1344
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v2, "updateSmartmailAck"

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;I)V

    .line 1345
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Failed to update SM ack value"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1357
    :pswitch_2
    const-string v0, "sync_extra_get_settings"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0, v7, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->triggerSyncAdapterSyncWithExtras(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_1

    .line 1336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateNonNamespacedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v1, "API: Update Calendar Setting"

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 1762
    invoke-virtual {v2}, Lcom/google/api/services/calendar/Calendar;->settings()Lcom/google/api/services/calendar/Calendar$Settings;

    move-result-object v2

    new-instance v3, Lcom/google/api/services/calendar/model/Setting;

    invoke-direct {v3}, Lcom/google/api/services/calendar/model/Setting;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/api/services/calendar/model/Setting;->setValue(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/api/services/calendar/Calendar$Settings;->update(Ljava/lang/String;Lcom/google/api/services/calendar/model/Setting;)Lcom/google/api/services/calendar/Calendar$Settings$Update;

    move-result-object v2

    .line 1761
    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->executeWithFlags(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Setting;

    return-object v0
.end method

.method private updateOrInsertNamespacedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1736
    new-instance v1, Lcom/google/api/services/calendar/model/Setting;

    invoke-direct {v1}, Lcom/google/api/services/calendar/model/Setting;-><init>()V

    .line 1737
    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/model/Setting;->setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v1

    .line 1738
    invoke-virtual {v1, p1}, Lcom/google/api/services/calendar/model/Setting;->setNamespace(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v1

    .line 1739
    invoke-virtual {v1, p2}, Lcom/google/api/services/calendar/model/Setting;->setName(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v1

    .line 1740
    invoke-virtual {v1, p3}, Lcom/google/api/services/calendar/model/Setting;->setValue(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v1

    .line 1745
    :try_start_0
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v3, "API: Update Calendar Setting"

    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 1746
    invoke-virtual {v4}, Lcom/google/api/services/calendar/Calendar;->settings()Lcom/google/api/services/calendar/Calendar$Settings;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/api/services/calendar/Calendar$Settings;->update(Ljava/lang/String;Lcom/google/api/services/calendar/model/Setting;)Lcom/google/api/services/calendar/Calendar$Settings$Update;

    move-result-object v0

    .line 1745
    invoke-virtual {v2, v3, v0, p4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->executeWithFlags(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Setting;
    :try_end_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    :goto_0
    return-object v0

    .line 1747
    :catch_0
    move-exception v0

    .line 1750
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v2, "API: Insert Calendar Setting"

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 1752
    invoke-virtual {v3}, Lcom/google/api/services/calendar/Calendar;->settings()Lcom/google/api/services/calendar/Calendar$Settings;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/api/services/calendar/Calendar$Settings;->insert(Lcom/google/api/services/calendar/model/Setting;)Lcom/google/api/services/calendar/Calendar$Settings$Insert;

    move-result-object v1

    .line 1751
    invoke-virtual {v0, v2, v1, p4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->executeWithFlags(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Setting;

    goto :goto_0

    .line 1754
    :cond_0
    throw v0
.end method

.method private static updateProviderForInitialSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3672
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3673
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Performing initial sync on %s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-wide v4, p2, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3674
    const-string v0, "sync_data4"

    const-string v1, "local android etag magic value"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3676
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-array v1, v10, [Ljava/lang/String;

    const-string v4, "_sync_id IS NOT NULL"

    aput-object v4, v1, v8

    const-string v4, "calendar_id=?"

    aput-object v4, v1, v9

    .line 3680
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    iget-wide v6, p2, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    .line 3681
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    move-object v1, p1

    .line 3676
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3682
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Applied ETAG_MAGIC_VALUE to: %d rows for Calendar: %d"

    new-array v3, v10, [Ljava/lang/Object;

    .line 3683
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    iget-wide v4, p2, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v9

    .line 3682
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3684
    return-void
.end method

.method private updateRecentNotifications(Landroid/accounts/Account;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1770
    const-string v0, "DB: notifications.query"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1771
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    const/4 v1, 0x1

    .line 1772
    invoke-virtual {v0, p1, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadRecentlyUsedNotificationsForAccount(Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v0

    .line 1773
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    const/4 v2, 0x0

    .line 1774
    invoke-virtual {v1, p1, v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadRecentlyUsedNotificationsForAccount(Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v1

    .line 1775
    const-string v2, "DB: notifications.query"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1778
    invoke-static {v2, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->serializeReminderList(Ljava/lang/StringBuilder;[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V

    .line 1779
    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    invoke-static {v2, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->serializeReminderList(Ljava/lang/StringBuilder;[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V

    .line 1782
    const-string v0, "goocal"

    const-string v1, "recentreminders"

    .line 1785
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1782
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateOrInsertNamespacedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;

    .line 1787
    return-void
.end method

.method private updateSingleSetting(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Lcom/google/api/services/calendar/model/Setting;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1471
    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1472
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Won\'t set empty setting: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1473
    const/4 v1, 0x0

    .line 1552
    :goto_0
    return-object v1

    .line 1476
    :cond_0
    invoke-static {p2, p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->localSettingValueToApiary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1479
    const-string v2, "smartMailDelivery"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "defaultNoEndTime"

    .line 1480
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "defaultEventLength"

    .line 1481
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "timezone"

    .line 1482
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1484
    :cond_1
    move-object/from16 v0, p4

    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateNonNamespacedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v1

    goto :goto_0

    .line 1488
    :cond_2
    const-string v2, "holidayscolor"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "taskscolor"

    .line 1489
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1490
    :cond_3
    const-string v2, "goocal"

    move-object/from16 v0, p4

    invoke-direct {p0, v2, p2, v1, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateOrInsertNamespacedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v1

    goto :goto_0

    .line 1497
    :cond_4
    const-string v1, "settingBirthdayVisibility"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "0"

    .line 1498
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1502
    const/4 v1, 0x1

    .line 1503
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getBirthdayCalendarId(Z)Ljava/lang/String;

    move-result-object v1

    .line 1502
    move-object/from16 v0, p5

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->removeFromCalendarList(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    .line 1504
    const/4 v1, 0x0

    .line 1505
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getBirthdayCalendarId(Z)Ljava/lang/String;

    move-result-object v1

    .line 1504
    move-object/from16 v0, p5

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->removeFromCalendarList(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    .line 1506
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->requestMetaFeedSync(Landroid/accounts/Account;)V

    .line 1507
    const/4 v1, 0x0

    goto :goto_0

    .line 1509
    :cond_5
    const-string v1, "settingBirthdayIncludeGplus"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1514
    const/4 v9, 0x0

    .line 1515
    const-string v1, "1"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1516
    if-nez v10, :cond_8

    const/4 v1, 0x1

    .line 1517
    :goto_1
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getBirthdayCalendarId(Z)Ljava/lang/String;

    move-result-object v11

    .line 1518
    const/4 v8, -0x1

    .line 1520
    :try_start_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v1

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "calendar_color_index"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ownerAccount=?"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "account_name=?"

    aput-object v6, v2, v5

    .line 1524
    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v6, v2

    const/4 v2, 0x1

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p5

    .line 1520
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1527
    if-eqz v2, :cond_c

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1528
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/apiary/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    move v1, v8

    .line 1535
    :goto_2
    if-eqz v2, :cond_6

    .line 1536
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1541
    :cond_6
    :goto_3
    move-object/from16 v0, p5

    invoke-direct {p0, p1, v0, v11}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->removeFromCalendarList(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    .line 1543
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1544
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 1545
    const-string v3, "calendar_color_index"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1547
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v10, v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->subscribeBirthdayCalendar(Landroid/content/Context;Landroid/accounts/Account;ZLandroid/os/Bundle;)V

    .line 1548
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1516
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 1530
    :catch_0
    move-exception v1

    move-object v2, v9

    .line 1531
    :goto_4
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1535
    if-eqz v2, :cond_b

    .line 1536
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v1, v8

    goto :goto_3

    .line 1532
    :catch_1
    move-exception v1

    .line 1533
    :goto_5
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/apiary/ParseException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1535
    if-eqz v9, :cond_b

    .line 1536
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v1, v8

    goto :goto_3

    .line 1535
    :catchall_0
    move-exception v1

    :goto_6
    if-eqz v9, :cond_9

    .line 1536
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 1551
    :cond_a
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Unhandled setting: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1552
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1535
    :catchall_1
    move-exception v1

    move-object v9, v2

    goto :goto_6

    .line 1532
    :catch_2
    move-exception v1

    move-object v9, v2

    goto :goto_5

    .line 1530
    :catch_3
    move-exception v1

    goto :goto_4

    :cond_b
    move v1, v8

    goto :goto_3

    :cond_c
    move v1, v8

    goto :goto_2
.end method

.method private static updateSyncStateAfterFeedRead(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 3920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3922
    invoke-virtual {p2, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v1

    .line 3923
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/FeedState;->clearInProgressData()V

    .line 3925
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/FeedState;->getMoveWindowEnd()J

    move-result-wide v2

    .line 3926
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 3928
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "Sliding sync window advanced to %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3930
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/google/android/syncadapters/calendar/FeedState;->setMoveWindowEnd(J)V

    .line 3931
    invoke-virtual {v1, v2, v3}, Lcom/google/android/syncadapters/calendar/FeedState;->setWindowEnd(J)V

    .line 3939
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/FeedState;->getDoIncrementalSync()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3940
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "switching from full to incremental"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3944
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sync_data4=?"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "calendar_id=?"

    aput-object v5, v3, v4

    .line 3946
    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "local android etag magic value"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p5, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    .line 3947
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3945
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 3948
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 3944
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3951
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/syncadapters/calendar/FeedState;->setDoIncrementalSync(Z)V

    .line 3954
    :cond_0
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Writing back feedSyncState: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3955
    invoke-virtual {p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3958
    :try_start_0
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->applyBatch(Landroid/content/ContentProviderClient;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3962
    return-void

    .line 3936
    :cond_1
    invoke-virtual {v1, p3}, Lcom/google/android/syncadapters/calendar/FeedState;->setUpdatedTime(Ljava/lang/String;)V

    .line 3937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/syncadapters/calendar/FeedState;->setLastSyncDate(J)V

    goto :goto_0

    .line 3959
    :catch_0
    move-exception v0

    .line 3960
    new-instance v1, Lcom/google/android/apiary/ParseException;

    const-string v2, "unable to update sync state after successful feed read"

    invoke-direct {v1, v2, v0}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updateTimelySettings(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1371
    const-string v2, "DB: settings.query"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsLogStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

    move-result-object v2

    const/16 v3, 0x14

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;->query(Landroid/accounts/Account;I)Landroid/database/Cursor;

    move-result-object v9

    .line 1374
    const-string v2, "DB: settings.query"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1375
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1376
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Found no pending settings"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1377
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1382
    const-string v2, "id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1383
    const-string v2, "value"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1384
    const-string v2, "flags"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1386
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1387
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1388
    const/4 v8, 0x0

    .line 1389
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    :cond_2
    :try_start_0
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1393
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1394
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1395
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1397
    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1433
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1435
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1438
    const-string v2, "DB: settings.update"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsLogStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;->removeRows(Ljava/util/List;)V

    .line 1440
    const-string v2, "DB: settings.update"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1442
    if-eqz v8, :cond_6

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1445
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getTimelySettings(Landroid/accounts/Account;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1446
    :catch_0
    move-exception v2

    .line 1447
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    .line 1404
    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateSingleSetting(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Lcom/google/api/services/calendar/model/Setting;

    move-result-object v2

    .line 1410
    if-eqz v2, :cond_4

    .line 1413
    invoke-interface {v14, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    :cond_4
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1416
    :catch_1
    move-exception v2

    .line 1417
    :try_start_3
    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isPermanentException(Lcom/google/api/client/http/HttpResponseException;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1419
    const/4 v2, 0x1

    .line 1420
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move v8, v2

    .line 1432
    goto :goto_1

    .line 1425
    :cond_5
    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_2

    .line 1427
    :catch_2
    move-exception v2

    .line 1429
    const-string v3, "Error updating setting"

    invoke-static {v2, v3}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1430
    const/4 v8, 0x1

    .line 1431
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1435
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1451
    :cond_6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1452
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/calendar/model/Setting;

    .line 1454
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->processApiSetting(Landroid/accounts/Account;Lcom/google/api/services/calendar/model/Setting;Landroid/content/ContentValues;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 1455
    :catch_3
    move-exception v2

    .line 1456
    const-string v5, "CalendarSyncAdapter"

    const-string v6, "Error parsing back setting: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 1459
    :cond_7
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1460
    const-string v2, "DB: settings.update"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateFromSync(Landroid/accounts/Account;Landroid/content/ContentValues;)Z

    .line 1462
    const-string v2, "DB: settings.update"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addHabitTypeToSyncData8(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 4583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/Calendar;->habits()Lcom/google/api/services/calendar/Calendar$Habits;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/Calendar$Habits;->list(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;

    move-result-object v10

    .line 4584
    const-string v5, "sync_data8=?"

    .line 4585
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 4586
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4589
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v2, "API: calendar.habits.list"

    invoke-virtual {v1, v2, v10}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/api/services/calendar/model/Habits;

    .line 4590
    invoke-virtual {v7}, Lcom/google/api/services/calendar/model/Habits;->getItems()Ljava/util/List;

    move-result-object v11

    .line 4592
    const/4 v1, 0x0

    move v9, v1

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 4593
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/api/services/calendar/model/Habit;

    .line 4594
    invoke-virtual {v8}, Lcom/google/api/services/calendar/model/Habit;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4595
    invoke-virtual {v8}, Lcom/google/api/services/calendar/model/Habit;->getHabitData()Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/HabitData;->getType()Ljava/lang/String;

    move-result-object v2

    .line 4594
    invoke-static {v1, v2}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->createHabitIdTypeStringFromServerType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4596
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 4597
    const-string v1, "sync_data8"

    invoke-virtual {v4, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4598
    const/4 v1, 0x0

    invoke-virtual {v8}, Lcom/google/api/services/calendar/model/Habit;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 4599
    invoke-static/range {p3 .. p3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v1

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 4605
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Account: %s, Habit: %s, Value: %s, Updated: %d"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 4606
    invoke-virtual {v8}, Lcom/google/api/services/calendar/model/Habit;->getHabitData()Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/api/services/calendar/model/HabitData;->getSummary()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v13, v14

    const/4 v8, 0x2

    aput-object v12, v13, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v8

    .line 4605
    invoke-static {v2, v3, v13}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4607
    if-lez v1, :cond_1

    .line 4608
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 4609
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->toAsSyncAdapterUri(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 4608
    invoke-virtual {v1, v2, v3, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 4592
    :cond_1
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    .line 4614
    :cond_2
    invoke-virtual {v7}, Lcom/google/api/services/calendar/model/Habits;->getNextPageToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/api/services/calendar/Calendar$Habits$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;

    .line 4615
    invoke-virtual {v10}, Lcom/google/api/services/calendar/Calendar$Habits$List;->getPageToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4616
    const/4 v1, -0x1

    return v1
.end method

.method applyOperations(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/EventHandler;Ljava/util/ArrayList;Ljava/util/List;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Lcom/google/android/syncadapters/calendar/FeedState;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Lcom/google/android/syncadapters/calendar/EventHandler;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apiary/EntityReader$EntityItem",
            "<",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;>;",
            "Landroid/content/SyncResult;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncState;",
            "Lcom/google/android/syncadapters/calendar/FeedState;",
            "Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3800
    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3813
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 3814
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->clear()V

    .line 3816
    :goto_0
    return-void

    .line 3801
    :catch_0
    move-exception v2

    .line 3802
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/SyncUtil;->restoreSyncStats(Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;Z)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 3803
    invoke-direct/range {v2 .. v10}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsSingleEntityMode(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/EventHandler;Ljava/util/List;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Lcom/google/android/syncadapters/calendar/FeedState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3813
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 3814
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 3813
    :catchall_0
    move-exception v2

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 3814
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->clear()V

    throw v2
.end method

.method applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3769
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3771
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->applyBatch(Landroid/content/ContentProviderClient;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 3772
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Batch applied successfully, %d results"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3783
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 3785
    return-void

    .line 3774
    :catch_0
    move-exception v0

    .line 3775
    :try_start_1
    const-string v1, "Error applying batch, unknown number of yield points succeeded"

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3776
    new-instance v1, Lcom/google/android/apiary/ParseException;

    const-string v2, "error while applying batch"

    invoke-direct {v1, v2, v0}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3783
    :catchall_0
    move-exception v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    throw v0

    .line 3777
    :catch_1
    move-exception v0

    .line 3778
    :try_start_2
    const-string v1, "Error applying batch, %d yield points succeeded"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3779
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getNumSuccessfulYieldPoints()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3778
    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3780
    new-instance v1, Lcom/google/android/apiary/ParseException;

    const-string v2, "error while applying batch"

    invoke-direct {v1, v2, v0}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public checkRuntimePermissions()Z
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->checkRuntimePermissions(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method convertIntoOperationsAndSaveSingleEvent(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/EventHandler;Lcom/google/android/apiary/EntityReader$EntityItem;Landroid/content/SyncResult;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Lcom/google/android/syncadapters/calendar/FeedState;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Lcom/google/android/syncadapters/calendar/EventHandler;",
            "Lcom/google/android/apiary/EntityReader$EntityItem",
            "<",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;",
            "Landroid/content/SyncResult;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncState;",
            "Lcom/google/android/syncadapters/calendar/FeedState;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3852
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/google/android/apiary/EntityReader$EntityItem;->entry:Ljava/lang/Object;

    check-cast v6, Lcom/google/api/services/calendar/model/Event;

    .line 3853
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/google/android/apiary/EntityReader$EntityItem;->entity:Landroid/content/Entity;

    .line 3855
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "calling applyItemToEntity for %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v5, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3856
    invoke-static/range {p5 .. p5}, Lcom/google/android/calendar/SyncUtil;->backUpSyncStats(Landroid/content/SyncResult;)Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;

    move-result-object v17

    .line 3858
    const/4 v8, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p9

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    :try_start_0
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/EventHandler;->applyItemToEntity(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;ZLandroid/content/SyncResult;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3870
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Lcom/google/android/syncadapters/calendar/FeedState;->setIdOfLastFetchedEvent(Ljava/lang/String;)V

    .line 3872
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "Processing event %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v5, v8}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3873
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3875
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lcom/google/android/apiary/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3880
    :goto_0
    return-void

    .line 3864
    :catch_0
    move-exception v12

    .line 3865
    const-string v9, "Preparing operation list failed, skipping"

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p9

    move-object/from16 v13, p6

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, p5

    invoke-direct/range {v8 .. v17}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->skipEntry(Ljava/lang/String;Ljava/util/List;ILjava/lang/Throwable;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;)V

    goto :goto_0

    .line 3876
    :catch_1
    move-exception v12

    .line 3877
    const-string v9, "Applying operation list failed, skipping"

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p9

    move-object/from16 v13, p6

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, p5

    invoke-direct/range {v8 .. v17}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->skipEntry(Ljava/lang/String;Ljava/util/List;ILjava/lang/Throwable;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;)V

    goto :goto_0
.end method

.method createCalendarApiClient(Landroid/accounts/Account;)Lcom/google/api/services/calendar/Calendar;
    .locals 4

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->createGoogleRequestInitializer()Lcom/google/android/apiary/GoogleRequestInitializer;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/Utils;->setUserAgentFromContext(Lcom/google/android/apiary/GoogleRequestInitializer;Landroid/content/Context;)V

    .line 582
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apiary/GoogleRequestInitializer;->setEmail(Ljava/lang/String;)V

    .line 583
    new-instance v1, Lcom/google/api/services/calendar/Calendar$Builder;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mHttpTransport:Lcom/google/api/client/http/HttpTransport;

    .line 584
    invoke-static {}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->getDefaultInstance()Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/services/calendar/Calendar$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 585
    invoke-virtual {v1}, Lcom/google/api/services/calendar/Calendar$Builder;->build()Lcom/google/api/services/calendar/Calendar;

    move-result-object v0

    .line 583
    return-object v0
.end method

.method createGoogleRequestInitializer()Lcom/google/android/apiary/GoogleRequestInitializer;
    .locals 5

    .prologue
    .line 575
    new-instance v0, Lcom/google/android/apiary/GoogleRequestInitializer;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "oauth2:https://www.googleapis.com/auth/calendar"

    const-string v3, "CalendarSyncAdapter"

    const-string v4, "com.android.calendar"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apiary/GoogleRequestInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getColorMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 4113
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4114
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4115
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 4116
    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4117
    array-length v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 4119
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v0, v7

    .line 4120
    const/4 v8, 0x1

    aget-object v0, v0, v8

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4115
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4121
    :catch_0
    move-exception v0

    .line 4122
    const-string v7, "CalendarSyncAdapter"

    const-string v8, "Error parsing color value: %s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v6, v9, v2

    invoke-static {v7, v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 4123
    :catch_1
    move-exception v0

    .line 4124
    const-string v7, "CalendarSyncAdapter"

    const-string v8, "Error parsing color value: %d"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v6, v9, v2

    invoke-static {v7, v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 4128
    :cond_1
    return-object v3
.end method

.method public getRequestExecutor()Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    return-object v0
.end method

.method public getServerDiffsForAccount(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 2413
    const-string v1, "Get Server Diffs for Account"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 2416
    if-eqz p2, :cond_4

    const-string v1, "metafeedonly"

    .line 2417
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v8, v1

    .line 2424
    :goto_0
    move-object/from16 v0, p3

    invoke-static {p0, v13, v0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getOrCreate(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v5

    .line 2426
    invoke-virtual {v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->isFirstSeen()Z

    move-result v4

    .line 2427
    if-eqz v4, :cond_0

    .line 2428
    move-object/from16 v0, p3

    invoke-direct {p0, v0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateColorsInProvider(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    .line 2430
    invoke-direct/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateCalendarsFromServerFeed(Landroid/accounts/Account;Landroid/content/ContentProviderClient;ZLcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    .line 2431
    if-eqz v4, :cond_3

    .line 2432
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setFirstSeen(Z)V

    .line 2433
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 2436
    const-string v1, "saved-calendar-settings-"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2439
    :goto_1
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 2440
    invoke-virtual {v13, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2442
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2445
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2446
    if-nez v2, :cond_6

    .line 2478
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2479
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, p1, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2482
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 2483
    invoke-virtual {v13, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2494
    :cond_3
    :goto_3
    if-eqz v8, :cond_b

    .line 2496
    const-string v1, "Get Server Diffs for Account"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 2548
    :goto_4
    return-void

    .line 2417
    :cond_4
    const/4 v1, 0x0

    move v8, v1

    goto :goto_0

    .line 2436
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 2450
    :cond_6
    :try_start_3
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 2451
    if-gtz v6, :cond_7

    .line 2452
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "Invalid settings line: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v6, v7, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2482
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 2483
    invoke-virtual {v13, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2485
    :catch_0
    move-exception v1

    goto :goto_3

    .line 2455
    :cond_7
    add-int/lit8 v7, v6, -0x1

    :try_start_5
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    .line 2456
    const-string v9, ":"

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2457
    if-gtz v6, :cond_8

    .line 2458
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "Invalid settings line: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v6, v7, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 2461
    :cond_8
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    .line 2462
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2463
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2464
    const-string v11, "sync_events"

    if-nez v7, :cond_9

    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2465
    const-string v7, "visible"

    if-nez v9, :cond_a

    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2467
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v7, "calendar_displayName=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v9, v11

    .line 2468
    invoke-virtual {v2, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 2471
    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 2472
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 2466
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v6, 0x64

    if-le v2, v6, :cond_1

    .line 2474
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, p1, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 2475
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 2464
    :cond_9
    const/4 v2, 0x1

    goto :goto_5

    .line 2465
    :cond_a
    const/4 v2, 0x1

    goto :goto_6

    .line 2487
    :catch_1
    move-exception v1

    .line 2488
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "IOException while reading file %s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "saved-calendar-settings-"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "CalendarSyncAdapter"

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2490
    invoke-static {v6, v7}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 2488
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 2501
    :cond_b
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v6

    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cal_sync1"

    aput-object v2, v9, v1

    const/4 v1, 0x1

    const-string v2, "visible"

    aput-object v2, v9, v1

    sget-object v10, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_SYNC:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v11, v1

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v11, v1

    const/4 v1, 0x2

    const-string v2, "1"

    aput-object v2, v11, v1

    const/4 v12, 0x0

    move-object/from16 v7, p3

    invoke-virtual/range {v6 .. v12}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2509
    const-string v1, "force"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2510
    const-string v1, "sync_only_visible"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2512
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2515
    :goto_7
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2516
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2517
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_c

    const/4 v1, 0x1

    .line 2519
    :goto_8
    invoke-static {v7, v3, v1, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncThrottle;->shouldBeSyncedBasedOnVisibility(Ljava/lang/String;ZZZ)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2521
    const-string v1, "CalendarSyncAdapter"

    const-string v8, "Skipping sync for feed %s."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v1, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    .line 2545
    :catchall_1
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2546
    const-string v2, "Get Server Diffs for Account"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v1

    .line 2517
    :cond_c
    const/4 v1, 0x0

    goto :goto_8

    .line 2525
    :cond_d
    if-nez v3, :cond_e

    .line 2526
    :try_start_7
    invoke-virtual {v5, v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v1

    .line 2525
    invoke-static {v13, v7, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncThrottle;->shouldBeSyncedBasedOnFrequency(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/FeedState;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2527
    const-string v1, "CalendarSyncAdapter"

    const-string v8, "Skipping sync for feed %s."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v1, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_7

    .line 2532
    :cond_e
    invoke-virtual {v6}, Landroid/os/Bundle;->clear()V

    .line 2533
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2534
    const/4 v1, 0x0

    invoke-static {p1, v7, v6, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->requestSingleFeedSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    .line 2545
    :cond_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2546
    const-string v1, "Get Server Diffs for Account"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method isCanceled()Z
    .locals 1

    .prologue
    .line 2135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method isUserWhitelistedForLogging(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncDefaultWhitelistedEmails:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/util/HashSet;

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/syncadapters/calendar/R$array;->sync_default_notification_whitelisted_users:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncDefaultWhitelistedEmails:Ljava/util/Set;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncDefaultWhitelistedEmails:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 5

    .prologue
    .line 570
    const v0, 0x318f9

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "CalendarSyncAdapter"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 571
    return-void
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 10

    .prologue
    .line 462
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->checkRuntimePermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    :cond_0
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Could not sync, insufficient permissions"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 464
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 559
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->onSyncInitiated(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 471
    const/4 v0, 0x0

    .line 474
    const-string v1, "timely_debug_origin"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 478
    new-instance v2, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 479
    const-string v1, "sync_default"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 486
    :goto_1
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    invoke-static {v2, p1, p4, v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->startSync(Landroid/os/Bundle;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;[Lcom/google/android/syncadapters/calendar/SyncHooks;)V

    .line 487
    const-class v0, Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    const-class v0, Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 490
    :cond_2
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v7

    .line 491
    invoke-static {v7}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 493
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 494
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->reset()V

    .line 496
    const/4 v6, 0x1

    .line 499
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mUpdatedColorsFromGsf:Z

    if-nez v0, :cond_3

    .line 500
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateColorMapFromGsf()V

    .line 502
    :cond_3
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAccountsWithColors:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/syncadapters/calendar/ConscryptInstallationException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 503
    :try_start_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAccountsWithColors:Ljava/util/Set;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 504
    invoke-direct {p0, p4, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateColorsInProvider(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 506
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 507
    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->performSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 508
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 509
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Stopping Sync for Account: %s as it is cancelled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/apiary/ParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/syncadapters/calendar/ConscryptInstallationException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v6

    .line 549
    :goto_2
    const/4 v1, 0x1

    invoke-static {v7, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 550
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v1

    invoke-static {p1, p4, p5, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->endSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Z)V

    .line 552
    const-string v1, "sync_periodic"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 553
    const-string v1, "PeriodicSync"

    invoke-static {v1}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 555
    :cond_5
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v1

    .line 556
    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->removePendingSync(Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 557
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->reset()V

    goto/16 :goto_0

    .line 506
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/apiary/ParseException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/syncadapters/calendar/ConscryptInstallationException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 513
    :catch_0
    move-exception v0

    .line 515
    :try_start_5
    const-string v1, "CalendarSyncAdapter"

    const-string v3, "Exception in onPerformLoggedSync "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 516
    const-string v1, "Exception in onPerformLoggedSync"

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v1, "onPerformLoggedSync"

    const-string v3, "SecurityException"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 549
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 550
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    invoke-static {p1, p4, p5, v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->endSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Z)V

    .line 552
    const-string v0, "sync_periodic"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 553
    const-string v0, "PeriodicSync"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 555
    :cond_6
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    .line 556
    invoke-virtual {v0, p1, v2, v6}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->removePendingSync(Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 557
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->reset()V

    goto/16 :goto_0

    .line 511
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 519
    :catch_1
    move-exception v0

    .line 520
    :try_start_6
    const-string v1, "Exception in onPerformLoggedSync"

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v1, "onPerformLoggedSync"

    const-string v3, "RemoteException"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 549
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 550
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    invoke-static {p1, p4, p5, v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->endSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Z)V

    .line 552
    const-string v0, "sync_periodic"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 553
    const-string v0, "PeriodicSync"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 555
    :cond_8
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    .line 556
    invoke-virtual {v0, p1, v2, v6}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->removePendingSync(Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 557
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->reset()V

    goto/16 :goto_0

    .line 523
    :catch_2
    move-exception v0

    .line 524
    :try_start_7
    const-string v1, "Exception in onPerformLoggedSync"

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v3, "onPerformLoggedSync"

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;I)V

    .line 526
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isAuthenticationException(Lcom/google/api/client/http/HttpResponseException;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 527
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 549
    :goto_3
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 550
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    invoke-static {p1, p4, p5, v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->endSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Z)V

    .line 552
    const-string v0, "sync_periodic"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 553
    const-string v0, "PeriodicSync"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 555
    :cond_9
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    .line 556
    invoke-virtual {v0, p1, v2, v6}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->removePendingSync(Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 557
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->reset()V

    goto/16 :goto_0

    .line 529
    :cond_a
    :try_start_8
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 549
    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v7, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 550
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v1

    invoke-static {p1, p4, p5, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->endSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Z)V

    .line 552
    const-string v1, "sync_periodic"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 553
    const-string v1, "PeriodicSync"

    invoke-static {v1}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 555
    :cond_b
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v1

    .line 556
    invoke-virtual {v1, p1, v2, v6}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->removePendingSync(Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 557
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->reset()V

    throw v0

    .line 531
    :catch_3
    move-exception v0

    .line 532
    :try_start_9
    const-string v1, "Exception in onPerformLoggedSync"

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v1, "onPerformLoggedSync"

    const-string v3, "AuthenticationException"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 549
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 550
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    invoke-static {p1, p4, p5, v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->endSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Z)V

    .line 552
    const-string v0, "sync_periodic"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 553
    const-string v0, "PeriodicSync"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 555
    :cond_c
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    .line 556
    invoke-virtual {v0, p1, v2, v6}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->removePendingSync(Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 557
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->reset()V

    goto/16 :goto_0

    .line 535
    :catch_4
    move-exception v0

    .line 536
    :try_start_a
    const-string v1, "Exception in onPerformLoggedSync"

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 537
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 549
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 550
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    invoke-static {p1, p4, p5, v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->endSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Z)V

    .line 552
    const-string v0, "sync_periodic"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 553
    const-string v0, "PeriodicSync"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 555
    :cond_d
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    .line 556
    invoke-virtual {v0, p1, v2, v6}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->removePendingSync(Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 557
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->reset()V

    goto/16 :goto_0

    .line 538
    :catch_5
    move-exception v0

    .line 539
    :try_start_b
    const-string v1, "Exception in onPerformLoggedSync "

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v1, "onPerformLoggedSync"

    const-string v3, "ParseException"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 549
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 550
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    invoke-static {p1, p4, p5, v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->endSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Z)V

    .line 552
    const-string v0, "sync_periodic"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 553
    const-string v0, "PeriodicSync"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 555
    :cond_e
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    .line 556
    invoke-virtual {v0, p1, v2, v6}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->removePendingSync(Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 557
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->reset()V

    goto/16 :goto_0

    .line 542
    :catch_6
    move-exception v0

    .line 543
    :try_start_c
    const-string v1, "Conscrypt error during sync"

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v1, "onPerformLoggedSync"

    const-string v3, "ConscryptInstallationException"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 549
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 550
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v0

    invoke-static {p1, p4, p5, v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->endSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Z)V

    .line 552
    const-string v0, "sync_periodic"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 553
    const-string v0, "PeriodicSync"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 555
    :cond_f
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    .line 556
    invoke-virtual {v0, p1, v2, v6}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->removePendingSync(Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 557
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->reset()V

    goto/16 :goto_0

    :cond_10
    move-object v2, p2

    goto/16 :goto_1
.end method

.method performUpsync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/ContentResolver;Landroid/content/SyncResult;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;,
            Lcom/google/android/apiary/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 721
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->logDeletionValues(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V

    .line 723
    const-string v6, "deletions_override"

    const/4 v7, 0x0

    .line 724
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 726
    const-string v6, "google_calendar_sync_max_loop_attempts"

    const-wide/16 v8, 0x6

    move-object/from16 v0, p4

    invoke-static {v0, v6, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 731
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v21

    .line 733
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->onBeforeUpSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 736
    const-string v6, "Process local calendar changes"

    invoke-static {v6}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 737
    const/high16 v6, 0x1000000

    or-int v6, v6, v21

    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 740
    :try_start_0
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "Local Calendar changes"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v11}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 742
    new-instance v13, Lcom/google/android/syncadapters/calendar/CalendarHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v13, v6, v0, v1, v7}, Lcom/google/android/syncadapters/calendar/CalendarHandler;-><init>(Lcom/google/api/services/calendar/Calendar;Landroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;)V

    move-object/from16 v7, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p1

    move-object/from16 v14, p5

    invoke-direct/range {v7 .. v14}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->processLocalChangesForHandler(JZLandroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/SyncResult;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 750
    const/high16 v7, 0x1000000

    or-int v7, v7, v21

    const/4 v11, 0x1

    invoke-static {v7, v11}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 752
    invoke-static/range {v21 .. v21}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 753
    const-string v7, "Process local calendar changes"

    invoke-static {v7}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 757
    const-string v7, "Process local event changes"

    invoke-static {v7}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 758
    const/high16 v7, 0x2000000

    or-int v7, v7, v21

    invoke-static {v7}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 761
    :try_start_1
    const-string v7, "CalendarSyncAdapter"

    const-string v11, "Local Event changes"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7, v11, v12}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 768
    invoke-static/range {p1 .. p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v11

    sget-object v13, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v14, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v12, "_id"

    aput-object v12, v14, v7

    const-string v15, "dirty=1 AND lastSynced=1"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p3

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v7

    .line 775
    if-eqz v7, :cond_1

    .line 777
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 778
    const-string v12, "CalendarSyncAdapter"

    const-string v13, "Found %d events marked dirty & lastSynced"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 779
    if-lez v11, :cond_0

    .line 780
    invoke-static/range {p1 .. p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v11

    sget-object v12, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "dirty=1 AND lastSynced=1"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v12, v13, v14}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->delete(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 785
    if-lez v11, :cond_0

    .line 786
    const-string v12, "CalendarSyncAdapter"

    const-string v13, "Deleted %d events marked dirty & lastSynced"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v15

    invoke-static {v12, v13, v14}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 790
    :cond_0
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 794
    :cond_1
    new-instance v11, Lcom/google/android/syncadapters/calendar/EventHandler;

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    move-object/from16 v20, v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-direct/range {v11 .. v20}, Lcom/google/android/syncadapters/calendar/EventHandler;-><init>(Landroid/content/Context;Lcom/google/api/services/calendar/Calendar;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/ContentResolver;Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Ljava/lang/String;[Lcom/google/android/syncadapters/calendar/SyncHooks;Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;)V

    move-object/from16 v13, p0

    move-wide v14, v8

    move/from16 v16, v10

    move-object/from16 v17, p3

    move-object/from16 v18, p1

    move-object/from16 v19, v11

    move-object/from16 v20, p5

    .line 794
    invoke-direct/range {v13 .. v20}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->processLocalChangesForHandler(JZLandroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/SyncResult;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v7

    .line 803
    const/high16 v8, 0x2000000

    or-int v8, v8, v21

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 805
    invoke-static/range {v21 .. v21}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 806
    const-string v8, "Process local event changes"

    invoke-static {v8}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 810
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/syncadapters/calendar/SyncLog;->saveProcessLocalChangesAttempts(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 813
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "Local Settings changes"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 814
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateTimelySettings(Landroid/accounts/Account;Landroid/content/ContentProviderClient;)V

    .line 816
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->onAfterUpSync(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 817
    return-void

    .line 750
    :catchall_0
    move-exception v6

    const/high16 v7, 0x1000000

    or-int v7, v7, v21

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 752
    invoke-static/range {v21 .. v21}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 753
    const-string v7, "Process local calendar changes"

    invoke-static {v7}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v6

    .line 790
    :catchall_1
    move-exception v6

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 803
    :catchall_2
    move-exception v6

    const/high16 v7, 0x2000000

    or-int v7, v7, v21

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 805
    invoke-static/range {v21 .. v21}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 806
    const-string v7, "Process local event changes"

    invoke-static {v7}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v6
.end method

.method processLocalChanges(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/SyncResult;Lcom/google/android/apiary/ItemAndEntityHandler;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Landroid/content/SyncResult;",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/ParseException;,
            Lcom/google/android/apiary/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 3995
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4067
    :goto_0
    return-void

    .line 3999
    :cond_0
    invoke-interface/range {p4 .. p4}, Lcom/google/android/apiary/ItemAndEntityHandler;->getEntitySelection()Ljava/lang/String;

    move-result-object v2

    .line 4000
    if-nez v2, :cond_1

    .line 4001
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "EntityIterator cannot have a null selection parameter"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 4006
    :cond_1
    :try_start_0
    const-string v3, "_id"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4007
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-1"

    aput-object v3, v9, v2

    .line 4009
    if-nez p5, :cond_2

    .line 4010
    invoke-static {}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetSupport;->getSafetyNet()Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;

    move-result-object v2

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->onFullSync(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/SyncResult;)V

    .line 4015
    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetSupport;->getSafetyNet()Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->getBatchSize()I

    move-result v2

    .line 4014
    move-object/from16 v0, p4

    invoke-interface {v0, v8, v9, v2}, Lcom/google/android/apiary/ItemAndEntityHandler;->newEntityIterator(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/EntityIterator;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 4017
    :try_start_1
    invoke-interface {v10}, Landroid/content/EntityIterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 4058
    :try_start_2
    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4061
    :catch_0
    move-exception v2

    .line 4063
    const-string v3, "RemoteException talking to provider"

    invoke-static {v2, v3}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4064
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v3, "processLocalChanges"

    const-string v4, "RemoteException"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 4065
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_0

    .line 4021
    :cond_3
    if-nez p5, :cond_4

    .line 4022
    :try_start_3
    invoke-static {}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetSupport;->getSafetyNet()Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;

    move-result-object v2

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v2, p1, v0, v10, v1}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->onBatchSync(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/EntityIterator;Landroid/content/SyncResult;)V

    .line 4026
    :cond_4
    :goto_2
    invoke-interface {v10}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4027
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 4058
    :try_start_4
    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 4030
    :cond_5
    :try_start_5
    invoke-interface {v10}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity;

    .line 4031
    const/4 v2, 0x0

    invoke-virtual {v4}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v5, "_id"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    .line 4033
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v2, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    iput-wide v6, v2, Landroid/content/SyncStats;->numEntries:J

    .line 4036
    invoke-static/range {p3 .. p3}, Lcom/google/android/calendar/SyncUtil;->backUpSyncStats(Landroid/content/SyncResult;)Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    .line 4038
    :try_start_6
    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->sendEntityToServer(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Entity;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;)V
    :try_end_6
    .catch Lcom/google/android/apiary/ParseException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/android/apiary/AuthenticationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 4040
    :catch_1
    move-exception v2

    .line 4041
    const/4 v3, 0x0

    :try_start_7
    move-object/from16 v0, p3

    invoke-static {v0, v7, v3}, Lcom/google/android/calendar/SyncUtil;->restoreSyncStats(Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;Z)V

    .line 4042
    const-string v3, "Failed to send entity to server"

    invoke-static {v2, v4, v3}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Landroid/content/Entity;Ljava/lang/String;)V

    .line 4043
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v3, "sendEntityToServer"

    const-string v4, "ParseException"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;Ljava/lang/String;)V

    .line 4045
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 4058
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V

    throw v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 4046
    :catch_2
    move-exception v2

    .line 4047
    const/4 v3, 0x0

    :try_start_9
    move-object/from16 v0, p3

    invoke-static {v0, v7, v3}, Lcom/google/android/calendar/SyncUtil;->restoreSyncStats(Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;Z)V

    .line 4050
    throw v2

    .line 4051
    :catch_3
    move-exception v2

    .line 4052
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v7, v3}, Lcom/google/android/calendar/SyncUtil;->restoreSyncStats(Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;Z)V

    .line 4053
    const-string v3, "Failed to send entity to server"

    invoke-static {v2, v4, v3}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Landroid/content/Entity;Ljava/lang/String;)V

    .line 4054
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 4058
    :cond_6
    :try_start_a
    invoke-interface {v10}, Landroid/content/EntityIterator;->close()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1
.end method

.method public repairWrongDefaults(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4155
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 4156
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "cal_sync1"

    aput-object v1, v3, v4

    const-string v4, "sync_events=1"

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4163
    if-nez v11, :cond_0

    .line 4182
    :goto_0
    return-void

    .line 4167
    :cond_0
    :try_start_0
    const-string v0, "google_calendar_sync_max_attendees"

    const/16 v1, 0x32

    invoke-static {v10, v0, v1}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 4171
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4172
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4173
    new-instance v0, Lcom/google/android/syncadapters/calendar/EventHandler;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    iget-object v6, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    iget-object v8, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    iget-object v9, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/syncadapters/calendar/EventHandler;-><init>(Landroid/content/Context;Lcom/google/api/services/calendar/Calendar;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/ContentResolver;Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Ljava/lang/String;[Lcom/google/android/syncadapters/calendar/SyncHooks;Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, v0

    move v9, v12

    .line 4176
    invoke-direct/range {v4 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->repairWrongDefaults(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/EventHandler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4180
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public restoreGrooveDataForEvents(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/ParseException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4444
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4445
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 4446
    const/4 v4, 0x2

    new-array v13, v4, [Ljava/lang/String;

    .line 4447
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 4448
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4449
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4450
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 4453
    invoke-static/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v4

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "ownerAccount"

    aput-object v8, v7, v5

    const-string v8, "sync_events=?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "1"

    aput-object v10, v9, v5

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 4461
    if-eqz v5, :cond_2

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4462
    const-string v4, "CalendarSyncAdapter"

    const-string v6, "Account: %s (%d calendars)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4464
    :cond_0
    const/4 v4, 0x1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4465
    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->calculateType(Ljava/lang/String;)I

    move-result v6

    .line 4466
    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 4480
    :cond_1
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 4483
    :cond_2
    if-eqz v5, :cond_3

    .line 4484
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4489
    :cond_3
    const/4 v4, 0x0

    move v7, v4

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_c

    .line 4490
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 4491
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 4492
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4497
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v8, "API: Get Events List"

    invoke-virtual {v6, v8, v4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/calendar/model/Events;
    :try_end_1
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4503
    const-string v8, "CalendarSyncAdapter"

    const-string v9, "\tCalendar %s (%d): %d groove events"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v5, v10, v20

    const/16 v20, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v10, v20

    const/16 v20, 0x2

    .line 4504
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Events;->getItems()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v10, v20

    .line 4503
    invoke-static {v8, v9, v10}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4506
    const/4 v8, 0x0

    .line 4507
    const/4 v9, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v9

    .line 4509
    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 4510
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_a

    .line 4511
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Events;->getNextPageToken()Ljava/lang/String;

    move-result-object v9

    .line 4512
    const-string v10, "CalendarSyncAdapter"

    const-string v18, "\t\teventsList.nextPageToken: %s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v10, v0, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4513
    if-eqz v9, :cond_4

    .line 4514
    invoke-virtual {v4, v9}, Lcom/google/api/services/calendar/Calendar$Events$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 4516
    const-string v10, "API: Get Events List"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V

    .line 4520
    :cond_4
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Events;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/calendar/model/Event;

    .line 4521
    const/16 v18, 0x1

    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v13, v18

    .line 4522
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/api/services/calendar/model/EventHabitInstance;->getParentId()Ljava/lang/String;

    move-result-object v18

    .line 4523
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4524
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 4528
    invoke-static {v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->getExtrasFlagsFromEvent(Lcom/google/api/services/calendar/model/Event;)I

    move-result v19

    .line 4530
    move/from16 v0, v19

    invoke-static {v6, v14, v0}, Lcom/google/android/syncadapters/calendar/Utils;->setGrooveValuesFromEvent(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;I)V

    .line 4531
    const-string v20, "CalendarSyncAdapter"

    const-string v21, "\t\tEvent: %s, Id: %s, grooveId: %s, extras: %d->%d"

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 4532
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getSummary()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v23

    const/4 v6, 0x2

    aput-object v18, v22, v6

    const/4 v6, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v22, v6

    const/4 v6, 0x4

    const-string v18, "sync_data9"

    .line 4533
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v22, v6

    .line 4531
    invoke-static/range {v20 .. v22}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4535
    invoke-static/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v6

    sget-object v18, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v18, "calendar_id=? AND _sync_id=?"

    .line 4536
    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 4537
    invoke-virtual {v6, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 4538
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 4534
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4471
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v6}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/api/services/calendar/Calendar$Events;->list(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v6

    const/4 v7, 0x1

    .line 4472
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/Calendar$Events$List;->setOnlyHabitInstances(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v6

    .line 4473
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getGServicesMaxEventsToFetchPerPage()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/Calendar$Events$List;->setMaxResults(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v6

    .line 4475
    const-string v7, "API: Get Events List"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V

    .line 4477
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4478
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4479
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4483
    :catchall_0
    move-exception v4

    if-eqz v5, :cond_6

    .line 4484
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    .line 4498
    :catch_0
    move-exception v4

    .line 4499
    const-string v5, "CalendarSyncAdapter"

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x21

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Error detected in JSON response: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4489
    :cond_7
    :goto_4
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_1

    .line 4541
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 4542
    const/4 v8, 0x1

    .line 4543
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 4546
    :cond_9
    if-nez v9, :cond_b

    .line 4557
    :cond_a
    :goto_5
    if-eqz v8, :cond_7

    .line 4559
    const-string v4, "CalendarSyncAdapter"

    const-string v6, "\tSending notification intent for %s (%d grooves)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    .line 4560
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 4559
    invoke-static {v4, v6, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4561
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.google.android.calendar.intent.action.REFRESH_GROOVE_NOTIFICATIONS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "account"

    .line 4562
    move-object/from16 v0, p2

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "calendarId"

    .line 4563
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "idsOfParentsAffected"

    .line 4565
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 4564
    invoke-interface {v12, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 4566
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 4568
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 4569
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->toAsSyncAdapterUri(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 4568
    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_4

    .line 4551
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v9, "API: Get Events List"

    invoke-virtual {v6, v9, v4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/calendar/model/Events;
    :try_end_3
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 4552
    :catch_1
    move-exception v4

    .line 4553
    const-string v6, "CalendarSyncAdapter"

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x21

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Error detected in JSON response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v4, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_5

    .line 4574
    :cond_c
    const/4 v4, -0x1

    return v4
.end method

.method saveRecentNotifications(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1672
    const-string v0, "#"

    .line 1673
    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1674
    array-length v1, v0

    if-eq v1, v2, :cond_0

    .line 1675
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "The pref string for recent notifications for account %s is malformed: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CalendarSyncAdapter"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1677
    invoke-static {v3, v4}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    .line 1675
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1683
    :goto_0
    return-void

    .line 1681
    :cond_0
    aget-object v1, v0, v5

    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->deserializeRemindersList(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 1682
    aget-object v0, v0, v6

    invoke-direct {p0, p1, v5, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->deserializeRemindersList(Landroid/accounts/Account;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public saveTimelyDataForEventRange(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;JLcom/google/android/syncadapters/calendar/Utils$TimeRange;Lcom/google/android/syncadapters/calendar/CalendarSyncState;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4347
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->hasFeed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4348
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->addFeed(Ljava/lang/String;)V

    .line 4350
    :cond_0
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v12

    .line 4353
    invoke-virtual {v12}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpgradeInProgressParams()Ljava/util/Map;

    move-result-object v3

    .line 4354
    if-eqz v3, :cond_1

    const-string v2, "wasUpgradedSuccessfully"

    .line 4355
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4356
    const/4 v2, 0x1

    .line 4408
    :goto_0
    return v2

    .line 4361
    :cond_1
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 4362
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v2}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/Calendar$Events;->list(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v2

    .line 4363
    if-eqz v3, :cond_2

    .line 4364
    invoke-static {v3, v2}, Lcom/google/android/syncadapters/calendar/Utils;->setRequestFromMap(Ljava/util/Map;Lcom/google/api/services/calendar/Calendar$Events$List;)V

    move-object v11, v2

    .line 4372
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4374
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4375
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v3, "API: Get Events List"

    .line 4376
    invoke-virtual {v2, v3, v11}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/calendar/model/Events;

    .line 4377
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Events;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/calendar/model/Event;

    move-object v3, p0

    move-object/from16 v6, p2

    move-object v7, p1

    move-wide/from16 v8, p4

    .line 4378
    invoke-direct/range {v3 .. v10}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->saveTimelyDataForEvent(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;Landroid/accounts/Account;Landroid/content/ContentProviderClient;JLjava/lang/String;)V

    goto :goto_3

    .line 4366
    :cond_2
    new-instance v3, Lcom/google/api/client/util/DateTime;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/syncadapters/calendar/Utils$TimeRange;->getStartTime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    invoke-virtual {v2, v3}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMin(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v2

    new-instance v3, Lcom/google/api/client/util/DateTime;

    .line 4367
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/syncadapters/calendar/Utils$TimeRange;->getEndTime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    invoke-virtual {v2, v3}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMax(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v2

    const/4 v3, 0x1

    .line 4368
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/services/calendar/Calendar$Events$List;->setMaxAttendees(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v2

    const/16 v3, 0xc8

    .line 4369
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/services/calendar/Calendar$Events$List;->setMaxResults(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v2

    move-object v11, v2

    goto :goto_1

    .line 4383
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4384
    move-object/from16 v0, p2

    invoke-virtual {p0, p1, v0, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 4388
    :cond_4
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Events;->getNextPageToken()Ljava/lang/String;

    move-result-object v2

    .line 4389
    if-nez v2, :cond_6

    .line 4399
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4400
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4392
    :cond_6
    invoke-virtual {v11, v2}, Lcom/google/api/services/calendar/Calendar$Events$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 4395
    invoke-static {v11}, Lcom/google/android/syncadapters/calendar/Utils;->getMapFromRequest(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/syncadapters/calendar/FeedState;->setUpgradeInProgressParams(Ljava/util/Map;)V

    .line 4396
    move-object/from16 v0, p7

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    goto/16 :goto_2

    .line 4404
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4405
    const-string v3, "wasUpgradedSuccessfully"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4406
    invoke-virtual {v12, v2}, Lcom/google/android/syncadapters/calendar/FeedState;->setUpgradeInProgressParams(Ljava/util/Map;)V

    .line 4407
    move-object/from16 v0, p7

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 4408
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public updateColorMapFromGsf()V
    .locals 2

    .prologue
    .line 431
    const-string v0, "Update Colors From GSF"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 432
    const-string v0, "google_calendar_calendar_colors"

    sget-object v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mCalendarColorsGsf:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->loadGsfColors(Ljava/lang/String;Ljava/util/Map;)V

    .line 433
    const-string v0, "google_calendar_event_colors"

    sget-object v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mEventColorsGsf:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->loadGsfColors(Ljava/lang/String;Ljava/util/Map;)V

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mUpdatedColorsFromGsf:Z

    .line 435
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAccountsWithColors:Ljava/util/Set;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mAccountsWithColors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 437
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    const-string v0, "Update Colors From GSF"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 439
    return-void

    .line 437
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateColorMapFromGsfLater()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->mUpdatedColorsFromGsf:Z

    .line 428
    return-void
.end method
