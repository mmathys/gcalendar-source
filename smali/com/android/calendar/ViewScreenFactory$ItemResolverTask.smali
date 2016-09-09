.class abstract Lcom/android/calendar/ViewScreenFactory$ItemResolverTask;
.super Landroid/os/AsyncTask;
.source "ViewScreenFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ViewScreenFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ItemResolverTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/calendar/ViewScreenFactory$Arguments",
        "<+",
        "Lcom/android/calendar/timely/TimelineEvent;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ViewScreenFactory$1;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/calendar/ViewScreenFactory$ItemResolverTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    check-cast p1, [Lcom/android/calendar/ViewScreenFactory$Arguments;

    invoke-virtual {p0, p1}, Lcom/android/calendar/ViewScreenFactory$ItemResolverTask;->doInBackground([Lcom/android/calendar/ViewScreenFactory$Arguments;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/calendar/ViewScreenFactory$Arguments;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/calendar/ViewScreenFactory$Arguments",
            "<+",
            "Lcom/android/calendar/timely/TimelineEvent;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 69
    array-length v0, p1

    if-eq v0, v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have to supply exactly one TimelineItem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    aget-object v7, p1, v0

    .line 73
    iget-object v0, v7, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    .line 77
    iget-wide v2, v0, Lcom/android/calendar/timely/TimelineEvent;->id:J

    .line 80
    :try_start_0
    iget-object v0, v7, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 81
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION_FOR_EXTERNAL_INTENT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 80
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 88
    :try_start_1
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, v7, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/calendar/event/CalendarEventModel;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-static {v0, v1}, Lcom/android/calendar/event/EditHelper;->setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 110
    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_1
    :goto_0
    return-object v6

    .line 92
    :cond_2
    :try_start_2
    new-instance v2, Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/calendar/ViewScreenFactory$ResolveResult;-><init>(Lcom/android/calendar/ViewScreenFactory$1;)V

    .line 93
    sget v3, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_ACCOUNT_NAME:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->accountName:Ljava/lang/String;

    .line 94
    const/16 v3, 0xf

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->calendarId:Ljava/lang/String;

    .line 95
    sget v3, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_SELF_ATTENDEE_STATUS:I

    .line 96
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->selfAttendeeStatus:I

    .line 97
    sget v3, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_HABIT_ID_AND_TYPE:I

    .line 98
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {v3}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->parseHabitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->grooveId:Ljava/lang/String;

    .line 100
    iget-object v3, v2, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->grooveId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.google"

    sget v4, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_ACCOUNT_TYPE:I

    .line 102
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    .line 106
    :cond_3
    iput-object v0, v2, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->model:Lcom/android/calendar/event/CalendarEventModel;

    .line 107
    iput-object v2, v7, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_4

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 110
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/ViewScreenFactory$ItemResolverTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected abstract onPostExecute(Ljava/lang/Void;)V
.end method
