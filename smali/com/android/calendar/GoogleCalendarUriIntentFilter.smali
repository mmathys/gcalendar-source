.class public Lcom/android/calendar/GoogleCalendarUriIntentFilter;
.super Ljava/lang/Object;
.source "GoogleCalendarUriIntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;
    }
.end annotation


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mLaunchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const-class v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "dtstart"

    aput-object v1, v0, v4

    const-string v1, "dtend"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 72
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v3

    const-string v1, "end"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->INSTANCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;

    .line 82
    iput-object p2, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mLaunchIntent:Landroid/content/Intent;

    .line 83
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->extractEidAndEmail(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->INSTANCE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/GoogleCalendarUriIntentFilter;ILjava/lang/String;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->updateSelfAttendeeStatus(ILjava/lang/String;ILandroid/content/Intent;)V

    return-void
.end method

.method private static extractEidAndEmail(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 98
    :try_start_0
    const-string v0, "eid"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v2, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;

    const-string v3, "eid=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    if-nez v0, :cond_0

    move-object v0, v1

    .line 162
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 105
    sget-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;

    const-string v2, "decoded eid=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    aput-object v7, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    move v4, v5

    .line 109
    :goto_1
    array-length v0, v6

    if-ge v4, v0, :cond_2

    .line 110
    aget-byte v0, v6, v4

    const/16 v2, 0x20

    if-ne v0, v2, :cond_5

    .line 111
    array-length v0, v6

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    .line 112
    if-eqz v4, :cond_2

    if-ge v0, v8, :cond_3

    :cond_2
    :goto_2
    move-object v0, v1

    .line 162
    goto :goto_0

    .line 117
    :cond_3
    array-length v2, v6

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, v6, v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 119
    add-int/lit8 v2, v0, -0x1

    .line 121
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v6, v0

    sparse-switch v0, :sswitch_data_0

    .line 138
    sget-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected one letter domain: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v6, v9

    .line 139
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    .line 138
    invoke-static {v0, v3, v7}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    const-string v0, "%"

    move v3, v2

    move-object v2, v0

    .line 147
    :goto_3
    new-instance v7, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v7, v6, v0, v4}, Ljava/lang/String;-><init>([BII)V

    .line 148
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v6, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 149
    sget-object v3, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;

    const-string v4, "eid=   %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v4, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    sget-object v3, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;

    const-string v4, "email= %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    invoke-static {v3, v4, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 151
    sget-object v3, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;

    const-string v4, "domain=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    invoke-static {v3, v4, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    if-eqz v2, :cond_6

    .line 153
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v2, v0

    .line 156
    :goto_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v7, v0, v3

    const/4 v3, 0x1

    aput-object v2, v0, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    sget-object v2, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;

    const-string v3, "Punting malformed URI %s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 123
    :sswitch_0
    :try_start_1
    const-string v0, "gmail.com"

    move v3, v2

    move-object v2, v0

    .line 124
    goto :goto_3

    .line 126
    :sswitch_1
    const-string v0, "group.calendar.google.com"

    move v3, v2

    move-object v2, v0

    .line 127
    goto :goto_3

    .line 129
    :sswitch_2
    const-string v0, "holiday.calendar.google.com"

    move v3, v2

    move-object v2, v0

    .line 130
    goto :goto_3

    .line 132
    :sswitch_3
    const-string v0, "import.calendar.google.com"

    move v3, v2

    move-object v2, v0

    .line 133
    goto :goto_3

    .line 135
    :sswitch_4
    const-string v0, "group.v.calendar.google.com"

    move v3, v2

    move-object v2, v0

    .line 136
    goto :goto_3

    .line 153
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 109
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_6
    move-object v2, v0

    goto :goto_5

    :cond_7
    move-object v2, v1

    move v3, v0

    goto/16 :goto_3

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x6d -> :sswitch_0
        0x76 -> :sswitch_4
    .end sparse-switch
.end method

.method private updateSelfAttendeeStatus(ILjava/lang/String;ILandroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 178
    new-instance v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;

    invoke-direct {v0, p0, v2, p4, p3}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;-><init>(Lcom/android/calendar/GoogleCalendarUriIntentFilter;Landroid/content/ContentResolver;Landroid/content/Intent;I)V

    .line 205
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 206
    const-string v2, "attendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "attendeeEmail=? AND event_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p2, v6, v1

    const/4 v7, 0x1

    .line 211
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 207
    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 212
    return-void
.end method


# virtual methods
.method public tryHandle()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    new-instance v1, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;

    invoke-direct {v1, p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;-><init>(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)V

    .line 167
    invoke-virtual {v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->isSupportedIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter$EventResponseHandlerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    const/4 v0, 0x1

    .line 171
    :cond_0
    return v0
.end method
