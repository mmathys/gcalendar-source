.class public Lcom/google/android/calendar/alerts/ContactNotificationImpl;
.super Ljava/lang/Object;
.source "ContactNotificationImpl.java"

# interfaces
.implements Lcom/android/calendar/alerts/ContactNotification;


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContactLink:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mEventId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "calendar_id"

    aput-object v1, v0, v2

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContext:Landroid/content/Context;

    .line 61
    iput-wide p2, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mEventId:J

    .line 65
    :try_start_0
    invoke-static {p1}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    iput-object v8, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContactLink:Landroid/net/Uri;

    .line 122
    :goto_0
    return-void

    .line 69
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 70
    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 69
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v9

    .line 72
    if-nez v9, :cond_2

    .line 120
    iput-object v8, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContactLink:Landroid/net/Uri;

    goto :goto_0

    .line 76
    :cond_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 117
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 120
    iput-object v8, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContactLink:Landroid/net/Uri;

    goto :goto_0

    .line 80
    :cond_3
    :try_start_4
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v1

    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    move-wide v4, p2

    .line 81
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getTimelyEventData(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 84
    if-nez v0, :cond_4

    .line 117
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 120
    iput-object v8, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContactLink:Landroid/net/Uri;

    goto :goto_0

    .line 89
    :cond_4
    :try_start_6
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getTitleContactAnnotations()Ljava/util/List;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v10, :cond_5

    const/4 v0, 0x0

    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->getContact()Lcom/google/api/services/calendar/model/ContactReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/ContactReference;->getFocusId()Ljava/lang/Long;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    if-nez v0, :cond_6

    .line 117
    :cond_5
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 120
    iput-object v8, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContactLink:Landroid/net/Uri;

    goto :goto_0

    .line 97
    :cond_6
    const/4 v0, 0x1

    :try_start_8
    new-array v4, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 98
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->getContact()Lcom/google/api/services/calendar/model/ContactReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/ContactReference;->getFocusId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 100
    iget-object v0, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "sourceid=? AND deleted=0"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v2

    .line 103
    if-nez v2, :cond_7

    .line 117
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 120
    iput-object v8, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContactLink:Landroid/net/Uri;

    goto/16 :goto_0

    .line 107
    :cond_7
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    .line 114
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 117
    :try_start_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 120
    iput-object v8, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContactLink:Landroid/net/Uri;

    goto/16 :goto_0

    .line 110
    :cond_8
    const/4 v0, 0x0

    :try_start_d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 111
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 112
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v1

    .line 114
    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 117
    :try_start_f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 120
    iput-object v1, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContactLink:Landroid/net/Uri;

    goto/16 :goto_0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_10
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 117
    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_11
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 120
    :catchall_2
    move-exception v0

    move-object v8, v1

    :goto_2
    iput-object v8, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContactLink:Landroid/net/Uri;

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 117
    :catchall_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public createTrampolineIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    .line 153
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/alerts/NotificationActionTrampoline;

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eventid"

    iget-wide v2, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mEventId:J

    .line 155
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mEventId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactLink()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContactLink:Landroid/net/Uri;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/android/calendar/R$drawable;->ic_contacts_white:I

    return v0
.end method

.method public getLabelResource()I
    .locals 1

    .prologue
    .line 168
    sget v0, Lcom/android/calendar/R$string;->contact_notification_label:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->getContactLink()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/calendar/alerts/ContactNotificationImpl;->getContactLink()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 134
    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 136
    return-void
.end method
