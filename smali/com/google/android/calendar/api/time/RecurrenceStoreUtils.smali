.class public Lcom/google/android/calendar/api/time/RecurrenceStoreUtils;
.super Ljava/lang/Object;
.source "RecurrenceStoreUtils.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/api/time/RecurrenceStoreUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private static cursorToRecurrence(Landroid/database/Cursor;)Lcom/google/android/calendar/api/time/Recurrence;
    .locals 5

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/calendar/api/time/Recurrence;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    new-instance v1, Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

    const/4 v4, 0x0

    .line 90
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/calendar/api/time/Recurrence;-><init>(JLcom/google/android/calendar/api/time/Recurrence$RecurrenceData;)V

    .line 89
    return-object v0
.end method

.method static extractRecurrence(Landroid/database/Cursor;)Lcom/google/android/calendar/api/time/Recurrence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/calendar/api/time/RecurrenceStoreUtils;->getEventType(Landroid/database/Cursor;)I

    move-result v0

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 44
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v0, Lcom/google/android/calendar/api/time/Recurrence;

    new-instance v4, Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

    invoke-direct {v4, v1}, Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/calendar/api/time/Recurrence;-><init>(JLcom/google/android/calendar/api/time/Recurrence$RecurrenceData;)V

    goto :goto_0

    .line 48
    :pswitch_1
    const/16 v0, 0x14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 49
    invoke-static {v0, v1}, Lcom/google/android/calendar/api/time/RecurrenceStoreUtils;->loadExceptionRecurrence(J)Lcom/google/android/calendar/api/time/Recurrence;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEventType(Landroid/database/Cursor;)I
    .locals 4

    .prologue
    .line 28
    const/16 v0, 0x14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x2

    .line 35
    :goto_0
    return v0

    .line 32
    :cond_0
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    const/4 v0, 0x1

    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadExceptionRecurrence(J)Lcom/google/android/calendar/api/time/Recurrence;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 63
    .line 65
    :try_start_0
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 66
    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/calendar/api/time/RecurrenceStoreUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading rrule data from the provider"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 74
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 75
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading rrule data: empty cursor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 78
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading rrule data: invalid cursor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_4
    invoke-static {v1}, Lcom/google/android/calendar/api/time/RecurrenceStoreUtils;->cursorToRecurrence(Landroid/database/Cursor;)Lcom/google/android/calendar/api/time/Recurrence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 82
    if-eqz v1, :cond_5

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_5
    return-object v0

    .line 82
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_0
.end method
