.class public Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl$AccountRemovedService;
.super Landroid/app/IntentService;
.source "RecentAndDefaultNotificationsFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountRemovedService"
.end annotation


# static fields
.field private static SELECTION_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    const-string v0, "accountName!=?"

    sput-object v0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl$AccountRemovedService;->SELECTION_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 386
    const-class v0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl$AccountRemovedService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 387
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 392
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->getSyncableAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v3

    .line 397
    array-length v1, v3

    if-lez v1, :cond_3

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "("

    sget-object v0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl$AccountRemovedService;->SELECTION_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    .line 400
    aget-object v0, v3, v5

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v2, v5

    .line 402
    const/4 v0, 0x1

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_2

    .line 403
    const-string v5, " AND "

    sget-object v1, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl$AccountRemovedService;->SELECTION_STRING:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    aget-object v1, v3, v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 407
    :cond_2
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    .line 414
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl$AccountRemovedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v2

    .line 415
    invoke-virtual {v2, v1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->deletePreferredNotifications(Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_3
.end method
