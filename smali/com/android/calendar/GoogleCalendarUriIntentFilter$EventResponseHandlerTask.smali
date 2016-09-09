.class Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;
.super Landroid/os/AsyncTask;
.source "GoogleCalendarUriIntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/GoogleCalendarUriIntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventResponseHandlerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAttendeeStatus:I

.field private mEidParts:[Ljava/lang/String;

.field private final mEventIntent:Landroid/content/Intent;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;


# direct methods
.method constructor <init>(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 226
    iput-object p1, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 223
    iput-object v1, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEidParts:[Ljava/lang/String;

    .line 227
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$200(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEventIntent:Landroid/content/Intent;

    .line 229
    const/4 v0, 0x0

    .line 230
    iget-object v2, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEventIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEventIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_1

    .line 234
    const-string v2, "RESPOND"

    const-string v3, "action"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    :try_start_0
    const-string v2, "rst"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    # invokes: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->extractEidAndEmail(Landroid/net/Uri;)[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$300(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEidParts:[Ljava/lang/String;

    .line 255
    :cond_1
    iput-object v1, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mUri:Landroid/net/Uri;

    .line 256
    iput v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mAttendeeStatus:I

    .line 257
    return-void

    .line 238
    :pswitch_0
    const/4 v0, 0x1

    .line 239
    goto :goto_0

    .line 241
    :pswitch_1
    const/4 v0, 0x2

    .line 242
    goto :goto_0

    .line 244
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 247
    :catch_0
    move-exception v2

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createIntent(IJJ)Landroid/content/Intent;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 440
    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    cmp-long v0, p4, v2

    if-nez v0, :cond_1

    .line 441
    :cond_0
    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0

    .line 443
    :cond_1
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$100(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v2, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 448
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 449
    const-string v1, "response_event_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    invoke-static {v0}, Lcom/android/calendar/Utils;->setThirdPartyEidSource(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private createIntentForEvent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 301
    invoke-direct {p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    .line 302
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eidParts=%s/%s"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object p1, v3, v8

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 304
    const-string v3, "_sync_id = ? AND ownerAccount = ?"

    .line 305
    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v8

    aput-object v0, v4, v9

    .line 306
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selection: %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 308
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$100(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 309
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$400()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "calendar_access_level desc"

    .line 308
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 312
    if-nez v7, :cond_0

    .line 313
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOTE: found no matches on event with id=\'%s\'"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v6

    .line 358
    :goto_0
    return-object v0

    .line 317
    :cond_0
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOTE: found %d matches on event with id=\'%s\'"

    new-array v2, v10, [Ljava/lang/Object;

    .line 318
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object p1, v2, v9

    .line 317
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 323
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 325
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 326
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 327
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v8, "_id: %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 328
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v8, "startMillis: %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 329
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v8, "endMillis:   %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 331
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    .line 332
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration:    %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v4, v5, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 339
    :try_start_1
    new-instance v4, Lcom/android/calendarcommon2/Duration;

    invoke-direct {v4}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 340
    invoke-virtual {v4, v0}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v4}, Lcom/android/calendarcommon2/Duration;->getMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 342
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v8, "startMillis! %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 343
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v8, "endMillis!   %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    :cond_2
    move-object v0, p0

    .line 353
    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->createIntent(IJJ)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    :try_start_3
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration:"

    invoke-virtual {v0}, Lcom/android/calendarcommon2/DateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 356
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 348
    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 356
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 358
    goto/16 :goto_0
.end method

.method private createIntentForInstance(Ljava/lang/String;)Landroid/content/Intent;
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 368
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 370
    array-length v1, v0

    if-eq v1, v10, :cond_0

    move-object v0, v6

    .line 417
    :goto_0
    return-object v0

    .line 376
    :cond_0
    aget-object v1, v0, v7

    invoke-direct {p0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->parseDate(Ljava/lang/String;)J

    move-result-wide v8

    .line 378
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-gtz v1, :cond_1

    move-object v0, v6

    .line 380
    goto :goto_0

    .line 385
    :cond_1
    const-string v3, "(_sync_id = ? OR _sync_id LIKE ?) AND ownerAccount = ? AND begin = ?"

    .line 389
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    aget-object v1, v0, v5

    aput-object v1, v4, v5

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_R%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 390
    invoke-direct {p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    const/4 v0, 0x3

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 392
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 393
    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 395
    const-wide/16 v10, 0x3e8

    add-long/2addr v10, v8

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 397
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$100(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 398
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->INSTANCE_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$500()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "calendar_access_level desc"

    .line 397
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 401
    if-nez v7, :cond_2

    move-object v0, v6

    .line 403
    goto :goto_0

    .line 407
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 409
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object v0, p0

    move-wide v2, v8

    .line 410
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->createIntent(IJJ)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 413
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 417
    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getOwnerAccount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEidParts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEidParts:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSyncId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEidParts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEidParts:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 426
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "yyyyMMdd"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 427
    const-string v0, "yyyyMMdd"

    .line 429
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 430
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 431
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 436
    :goto_1
    return-wide v0

    .line 428
    :cond_0
    const-string v0, "yyyyMMdd\'T\'HHmmss\'Z\'"
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    :goto_2
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Parsing the date has failed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 436
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 433
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->getSyncId()Ljava/lang/String;

    move-result-object v1

    .line 280
    if-nez v1, :cond_1

    .line 281
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not find event for uri: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 282
    const/4 v0, 0x0

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 286
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->createIntentForEvent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 287
    if-nez v0, :cond_0

    .line 292
    invoke-direct {p0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->createIntentForInstance(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public isSupportedIntent()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEidParts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 456
    if-eqz p1, :cond_1

    .line 457
    iget v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mAttendeeStatus:I

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$100(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 472
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$100(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 473
    return-void

    .line 460
    :cond_0
    const-string v0, "response_event_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 461
    iget-object v1, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    .line 462
    invoke-direct {p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->getOwnerAccount()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mAttendeeStatus:I

    .line 461
    # invokes: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->updateSelfAttendeeStatus(ILjava/lang/String;ILandroid/content/Intent;)V
    invoke-static {v1, v0, v2, v3, p1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$600(Lcom/android/calendar/GoogleCalendarUriIntentFilter;ILjava/lang/String;ILandroid/content/Intent;)V

    goto :goto_0

    .line 467
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$100(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->mEventIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
