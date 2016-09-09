.class public Lcom/android/calendar/alerts/NotificationActionTrampoline;
.super Landroid/app/Activity;
.source "NotificationActionTrampoline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/NotificationActionTrampoline$RefreshNotificationsTask;
    }
.end annotation


# static fields
.field public static final ACTIONS_REQUIRING_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.android.calendar.MAP"

    aput-object v2, v1, v3

    const-string v2, "com.android.calendar.MAIL"

    aput-object v2, v1, v4

    const-string v2, "com.android.calendar.CONTACT"

    aput-object v2, v1, v5

    .line 55
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/alerts/NotificationActionTrampoline;->ALL_ACTIONS:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.android.calendar.MAP"

    aput-object v2, v1, v3

    const-string v2, "com.android.calendar.MAIL"

    aput-object v2, v1, v4

    const-string v2, "com.android.calendar.CONTACT"

    aput-object v2, v1, v5

    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/alerts/NotificationActionTrampoline;->ACTIONS_REQUIRING_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/alerts/AlertActionIntentBuilder;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/calendar/alerts/NotificationActionTrampoline;->mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    .line 81
    return-void
.end method

.method private startContact(J)Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/calendar/alerts/NotificationActionTrampoline;->mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    .line 219
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->createContactActivityIntent(J)Lcom/android/calendar/alerts/ContactNotification;

    move-result-object v0

    .line 221
    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 225
    :cond_0
    invoke-interface {v0}, Lcom/android/calendar/alerts/ContactNotification;->startActivity()V

    .line 226
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startMail(J)Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/calendar/alerts/NotificationActionTrampoline;->mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->createQuickResponseActivityIntent(J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->startActivity(Landroid/content/Intent;)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method private startMap(J)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 171
    .line 173
    iget-object v0, p0, Lcom/android/calendar/alerts/NotificationActionTrampoline;->mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->createMapActivityIntent(J)Landroid/content/Intent;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_1

    .line 177
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    const/4 v0, 0x1

    .line 185
    :goto_0
    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->maps_not_available:I

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 190
    :cond_0
    return v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v0, "NotifActionTrampoline"

    const-string v2, "Was able to create a geoIntent for an event, but startActivity threw ActivityNotFoundException nonetheless."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private trackAnalytics(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_notification:I

    .line 158
    invoke-virtual {p0, v1}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    iget-object v1, p0, Lcom/android/calendar/alerts/NotificationActionTrampoline;->mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    invoke-direct {v1, p0}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/alerts/NotificationActionTrampoline;->mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string v4, "eventid"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 96
    const-string v6, "NotifActionTrampoline"

    const-string v7, "onReceive: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    if-eqz v3, :cond_1

    cmp-long v1, v4, v10

    if-nez v1, :cond_2

    .line 99
    :cond_1
    const-string v0, "NotifActionTrampoline"

    const-string v1, "Received intent without action or without event ID"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {p0}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->finish()V

    .line 149
    :goto_0
    return-void

    .line 104
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/calendar/alerts/NotificationActionTrampoline;->ACTIONS_REQUIRING_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    sget v0, Lcom/android/calendar/R$string;->no_calendar_permission_title:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    invoke-virtual {p0}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->finish()V

    goto :goto_0

    .line 112
    :cond_3
    const/4 v1, -0x1

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 136
    const-string v1, "NotifActionTrampoline"

    const-string v2, "Invalid action: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 139
    :goto_2
    if-nez v0, :cond_5

    .line 143
    new-instance v0, Lcom/android/calendar/alerts/NotificationActionTrampoline$RefreshNotificationsTask;

    invoke-direct {v0, p0}, Lcom/android/calendar/alerts/NotificationActionTrampoline$RefreshNotificationsTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/calendar/alerts/NotificationActionTrampoline$RefreshNotificationsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :cond_5
    invoke-virtual {p0}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->finish()V

    goto :goto_0

    .line 112
    :sswitch_0
    :try_start_3
    const-string v2, "com.android.calendar.MAP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v0

    goto :goto_1

    :sswitch_1
    const-string v6, "com.android.calendar.MAIL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v2, "com.android.calendar.CONTACT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    .line 114
    :pswitch_0
    invoke-direct {p0, v4, v5}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->startMap(J)Z

    move-result v0

    .line 116
    sget v1, Lcom/android/calendar/R$string;->analytics_action_notification_map:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->trackAnalytics(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 147
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->finish()V

    throw v0

    .line 119
    :pswitch_1
    :try_start_4
    invoke-direct {p0, v4, v5}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->startMail(J)Z

    move-result v0

    .line 121
    sget v1, Lcom/android/calendar/R$string;->analytics_action_notification_mail:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->trackAnalytics(Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :pswitch_2
    invoke-direct {p0, v4, v5}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->startContact(J)Z

    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 131
    const/high16 v1, 0x10a0000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->overridePendingTransition(II)V

    .line 133
    :cond_6
    sget v1, Lcom/android/calendar/R$string;->analytics_action_notification_contact:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/alerts/NotificationActionTrampoline;->trackAnalytics(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        -0x52f95a08 -> :sswitch_0
        -0x1c3c9144 -> :sswitch_2
        -0xc31e785 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
