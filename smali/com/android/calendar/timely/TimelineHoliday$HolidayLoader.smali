.class public Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;
.super Ljava/lang/Object;
.source "TimelineHoliday.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineHoliday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HolidayLoader"
.end annotation


# instance fields
.field protected final mTimelineHoliday:Lcom/android/calendar/timely/TimelineHoliday;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/TimelineHoliday;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;->mTimelineHoliday:Lcom/android/calendar/timely/TimelineHoliday;

    .line 136
    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;)Lcom/android/calendar/timely/TimelineHoliday;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;->mTimelineHoliday:Lcom/android/calendar/timely/TimelineHoliday;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineHoliday;->isGlobalsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;->mTimelineHoliday:Lcom/android/calendar/timely/TimelineHoliday;

    invoke-static {p1, v0}, Lcom/android/calendar/timely/TimelineHoliday;->initHolidayInformation(Landroid/content/Context;Lcom/android/calendar/timely/TimelineHoliday;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;->mTimelineHoliday:Lcom/android/calendar/timely/TimelineHoliday;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineHoliday;->getInfoUri()Landroid/net/Uri;

    move-result-object v1

    .line 146
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "description"

    aput-object v0, v2, v4

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    .line 149
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 152
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;->mTimelineHoliday:Lcom/android/calendar/timely/TimelineHoliday;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/TimelineHoliday;->setDescription(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;->mTimelineHoliday:Lcom/android/calendar/timely/TimelineHoliday;

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
