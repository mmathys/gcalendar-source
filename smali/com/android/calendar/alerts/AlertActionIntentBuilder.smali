.class public Lcom/android/calendar/alerts/AlertActionIntentBuilder;
.super Ljava/lang/Object;
.source "AlertActionIntentBuilder.java"


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEES_SORT_ORDER:Ljava/lang/String;

.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v3

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 40
    const-string v0, "%s ASC, %s ASC"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "attendeeName"

    aput-object v2, v1, v3

    const-string v2, "attendeeEmail"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->ATTENDEES_SORT_ORDER:Ljava/lang/String;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ownerAccount"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "organizer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private static addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1, p2}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    return-void
.end method

.method private createMapActivityIntentFromLegacyLocation(J)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->getURLSpans(J)[Landroid/text/style/URLSpan;

    move-result-object v1

    .line 218
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 219
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 220
    const-string v4, "geo:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 226
    :goto_1
    return-object v0

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private createMapActivityIntentFromStructuredLocation(J)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/api/CalendarApi;->initialize(Landroid/content/Context;)V

    .line 190
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Events:Lcom/google/android/calendar/api/EventClient;

    new-instance v2, Lcom/google/android/calendar/api/EventDescriptor;

    .line 191
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;)V

    invoke-interface {v0, v2}, Lcom/google/android/calendar/api/EventClient;->read(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventClient$ReadResult;

    .line 192
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventClient$ReadResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 208
    :goto_0
    return-object v0

    .line 197
    :cond_1
    invoke-interface {v0}, Lcom/google/android/calendar/api/EventClient$ReadResult;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getLocation()Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;->getEventLocations()Ljava/util/Collection;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 199
    goto :goto_0

    .line 201
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    .line 202
    iget-object v3, v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v0, v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 204
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 208
    goto :goto_0
.end method

.method private getAttendeesCursor(J)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 68
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->ATTENDEES_SORT_ORDER:Ljava/lang/String;

    .line 67
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getEventCursor(J)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 62
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 61
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getLocationCursor(J)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 75
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "eventLocation"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 74
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getURLSpans(J)[Landroid/text/style/URLSpan;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 330
    new-array v0, v0, [Landroid/text/style/URLSpan;

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->getLocationCursor(J)Landroid/database/Cursor;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_1

    .line 335
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->extendedLinkify(Ljava/lang/String;Z)Landroid/text/Spannable;

    move-result-object v0

    .line 342
    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_1
    return-object v0

    .line 346
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method createContactActivityIntent(J)Lcom/android/calendar/alerts/ContactNotification;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/calendar/alerts/ContactNotificationImpl;-><init>(Landroid/content/Context;J)V

    .line 243
    invoke-interface {v0}, Lcom/android/calendar/alerts/ContactNotification;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createEmailIntent(JLjava/lang/String;)Landroid/content/Intent;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 97
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->getEventCursor(J)Landroid/database/Cursor;

    move-result-object v5

    .line 102
    if-eqz v5, :cond_8

    .line 104
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    const/4 v0, 0x2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    const/4 v0, 0x3

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 111
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v6, v3

    move-object v5, v4

    .line 115
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/calendar/R$string;->no_title_label:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->getAttendeesCursor(J)Landroid/database/Cursor;

    move-result-object v7

    .line 123
    if-eqz v7, :cond_3

    .line 125
    :goto_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 126
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 127
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 129
    if-ne v8, v10, :cond_1

    .line 130
    invoke-static {v4, v9, v6}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 136
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 111
    :catchall_1
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    .line 132
    :cond_1
    :try_start_2
    invoke-static {v3, v9, v6}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 136
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    .line 143
    invoke-static {v3, v0, v6}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->addIfEmailable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    :cond_5
    :goto_3
    return-object v2

    :cond_6
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->createEmailAttendeesIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v0, v2

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    move-object v1, v2

    move-object v6, v2

    move-object v5, v2

    goto/16 :goto_1
.end method

.method createMailTrampolineIntent(J)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 255
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->getEventCursor(J)Landroid/database/Cursor;

    move-result-object v2

    .line 257
    if-eqz v2, :cond_4

    .line 259
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 263
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 268
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->getAttendeesCursor(J)Landroid/database/Cursor;

    move-result-object v2

    .line 269
    if-eqz v2, :cond_1

    .line 271
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v3, v0}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.MAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/calendar/alerts/NotificationActionTrampoline;

    .line 275
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eventid"

    .line 276
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    .line 279
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    const/high16 v4, 0x8000000

    .line 278
    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 284
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_1
    :goto_2
    return-object v1

    .line 263
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 284
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method createMapActivityIntent(J)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->createMapActivityIntentFromStructuredLocation(J)Landroid/content/Intent;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->createMapActivityIntentFromLegacyLocation(J)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method createMapTrampolineIntent(J)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->createMapActivityIntentFromLegacyLocation(J)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    .line 316
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/alerts/NotificationActionTrampoline;

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eventid"

    .line 318
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method createQuickResponseActivityIntent(J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventId"

    .line 84
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 83
    return-object v0
.end method
