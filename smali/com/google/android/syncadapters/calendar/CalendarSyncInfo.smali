.class public Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;
.super Ljava/lang/Object;
.source "CalendarSyncInfo.java"


# instance fields
.field public accessLevel:I

.field public account:Landroid/accounts/Account;

.field public calendarId:J

.field public calendarSyncId:Ljava/lang/String;

.field public calendarTimezone:Ljava/lang/String;

.field public defaultAllDayReminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation
.end field

.field public defaultReminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation
.end field

.field public slidingWindowEnd:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
