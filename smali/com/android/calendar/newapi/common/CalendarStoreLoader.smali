.class public Lcom/android/calendar/newapi/common/CalendarStoreLoader;
.super Lcom/android/calendar/newapi/common/AsyncTaskLoader;
.source "CalendarStoreLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/common/AsyncTaskLoader",
        "<",
        "Lcom/android/calendar/newapi/model/CalendarStore;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditHelper:Lcom/android/calendar/event/EditHelper;

.field private mParams:[Ljava/lang/Long;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->mParams:[Ljava/lang/Long;

    .line 31
    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/calendar/event/TimelyEditHelper;

    iget-object v1, p0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/TimelyEditHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->mEditHelper:Lcom/android/calendar/event/EditHelper;

    .line 36
    return-void
.end method

.method protected varargs runInBackground([Ljava/lang/Void;)Lcom/android/calendar/newapi/model/CalendarStore;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 40
    invoke-static {}, Lcom/google/android/calendar/api/ColorCache;->initialize()V

    .line 42
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->mParams:[Ljava/lang/Long;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->mParams:[Ljava/lang/Long;

    aget-object v0, v0, v1

    .line 43
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 46
    if-nez v0, :cond_2

    move-object v3, v6

    .line 47
    :goto_1
    if-nez v0, :cond_3

    move-object v4, v6

    .line 50
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->mEditHelper:Lcom/android/calendar/event/EditHelper;

    .line 52
    invoke-virtual {v2}, Lcom/android/calendar/event/EditHelper;->getCalendarsProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 50
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 56
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->primary_calendar_display_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->mEditHelper:Lcom/android/calendar/event/EditHelper;

    .line 59
    invoke-static {v7, v6, v0, v1}, Lcom/android/calendar/event/data/LoadDetailsUtils;->setCalendarsMapFromCursor(Ljava/util/Map;Landroid/database/Cursor;Ljava/lang/String;Lcom/android/calendar/event/EditHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-eqz v6, :cond_0

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    new-instance v0, Lcom/android/calendar/newapi/model/CalendarStore;

    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/calendar/newapi/model/CalendarStore;-><init>(Ljava/util/Map;Lcom/android/calendar/timely/data/CalendarsCache;)V

    return-object v0

    :cond_1
    move-object v0, v6

    .line 42
    goto :goto_0

    .line 46
    :cond_2
    :try_start_1
    const-string v3, "_id=?"

    goto :goto_1

    .line 49
    :cond_3
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 61
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method protected bridge synthetic runInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->runInBackground([Ljava/lang/Void;)Lcom/android/calendar/newapi/model/CalendarStore;

    move-result-object v0

    return-object v0
.end method
